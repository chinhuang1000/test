#include "ros/ros.h"
#include "keyboard.h"
#include <serial/serial.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32MultiArray.h>
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/TwistStamped.h"
#include <iostream>
#include <sstream>

serial::Serial ros_ser;
int get_command;

template< typename T >
std::string to_hex( T i )
{
  std::stringstream stream;
  stream << "0x" 
         << std::setfill ('0') << std::setw(sizeof(T)*2) 
         << std::hex << i;
  return stream.str();
}

int twocom2int(uint8_t value){
	int re_value = 0;
	if(value & 0b10000000){
		re_value = -(int)(0b100000000 - value);
	}else{
		re_value = (int)value;
	}
	return re_value;
}

uint8_t int2twocom(int value){
	uint8_t re_value = 0b00000000;
	if(value < 0){
		re_value = 256 + value;
	}else{
		re_value = value;
	}
	return re_value;
}


bool uart_com(uint8_t* out_msg, int out_length, uint8_t* in_msg, int in_length, int wait_decisecond){
	if(!ros_ser.isOpen()){
		ROS_ERROR_STREAM("Serial not conntected. Fail to uart_com.");
		return false;
	}else{
		out_msg[out_length-1] = 0;
		for(int i = 0; i < out_length-1; i++){
			out_msg[out_length-1] += out_msg[i];
		}
		#ifdef VERBOSE
			ROS_INFO("UART Transmit");
			if(out_length ==4){
				ROS_INFO("output: %#2X, %#2X, %#2X, %#2X",out_msg[0],out_msg[1],out_msg[2],out_msg[3]);
			}else if(out_length ==5){
				ROS_INFO("output: %#2X, %#2X, %#2X, %#2X, %#2X",out_msg[0],out_msg[1],out_msg[2],out_msg[3],out_msg[4]);
			}else if(out_length ==6){
				ROS_INFO("output: %#2X, %#2X, %#2X, %#2X, %#2X, %#2X",out_msg[0],out_msg[1],out_msg[2],out_msg[3],out_msg[4],out_msg[5]);
			}
		#endif
		#ifdef VERBOSE
			ROS_INFO("UART Recieve");
		#endif
		
		std::stringstream intput_byte_log;
		
		for(int try_times = 1; try_times<=3;try_times++){
			ros_ser.flush();
			ros_ser.write(out_msg, out_length);
			int total_waiting_time = 0; //in 0.1ms
			usleep(100*in_length);
			usleep(100000*wait_decisecond);
			ROS_INFO("%d", ros_ser.available());
			while(ros_ser.available() < in_length){
				ROS_INFO("in while");
				usleep(100); // time for one byte in baudrate 115200
				total_waiting_time += 1; // ROS_INFO("%#h", ddd)
			}
			for(int in_msg_index = 0; in_msg_index <in_length;in_msg_index++)
				in_msg[in_msg_index] = 0;
			
			ros_ser.read(in_msg, in_length);
			
			if(in_length ==4){
				intput_byte_log << "input: " << to_hex<uint8_t>(in_msg[0]) <<", "<< to_hex<uint8_t>(in_msg[1]) <<", "<< to_hex<uint8_t>(in_msg[2]) <<", "<< to_hex<uint8_t>(in_msg[3]) << std::endl;
				//#ifdef VERBOSE
					ROS_INFO("input: %#2X, %#2X, %#2X, %#2X",in_msg[0],in_msg[1],in_msg[2],in_msg[3]);
				//#endif
			}else if(in_length ==5){
				intput_byte_log << "input: " << to_hex<uint8_t>(in_msg[0]) <<", "<< to_hex<uint8_t>(in_msg[1]) <<", "<< to_hex<uint8_t>(in_msg[2]) <<", "<< to_hex<uint8_t>(in_msg[3]) <<", "<< to_hex<uint8_t>(in_msg[4]) << std::endl;
				#ifdef VERBOSE
					ROS_INFO("input: %#2X, %#2X, %#2X, %#2X, %#2X",in_msg[0],in_msg[1],in_msg[2],in_msg[3],in_msg[4]);
				#endif
			}else if(in_length ==6){
				intput_byte_log << "input: " << to_hex<uint8_t>(in_msg[0]) <<", "<< to_hex<uint8_t>(in_msg[1]) <<", "<< to_hex<uint8_t>(in_msg[2]) <<", "<< to_hex<uint8_t>(in_msg[3]) <<", "<< to_hex<uint8_t>(in_msg[4]) <<", "<< to_hex<uint8_t>(in_msg[5]) << std::endl;
				#ifdef VERBOSE
					ROS_INFO("input: %#2X, %#2X, %#2X, %#2X, %#2X %#2X",in_msg[0],in_msg[1],in_msg[2],in_msg[3],in_msg[4],in_msg[5]);
				#endif
			}
			
			uint8_t check_sum = 0;
			for(int i = 0; i < in_length-1; i++){
				check_sum += in_msg[i];
			}
			if(in_msg[0]==0xF1 && (in_msg[1]==out_msg[1]||((in_msg[1]==0x51 ||in_msg[1]==0x63)&&out_msg[1]==0x63)) && in_msg[in_length-1] == check_sum){
				//#ifdef VERBOSE
					ROS_INFO("tried times: %d, communication success.", try_times);
				//#endif
				return true;
			}else{
				ROS_WARN("tried times: %d, communication fail.", try_times);
				ROS_WARN("%s", intput_byte_log.str().c_str());
				usleep(100*in_length);
				ros_ser.flush();
				//ros_ser.read(in_msg, ros_ser.available());	//clean remain bytes in buffer
				if(try_times>=3)
					return false;
			}
		}
	}
}


//a subscriber who also publishes  
class SubPub 
{
public:
	SubPub(){
		
		pub = n.advertise<std_msgs::Int32MultiArray>("cmd_publisher", 1);
		sub = n.subscribe("/keyboard/keyup", 1000, &SubPub::kb_Callback, this);
	}
	
	void kb_Callback(const keyboard::Key& msg){

		ROS_INFO("I heard: [%d]", msg.code);
		uint8_t uart_out_message[6];
		uint8_t uart_in_message[6];
		uart_out_message[0] = 0xF0;
		uart_out_message[1] = 0x72;
		std_msgs::Int32MultiArray cmd_msg;
		int v, w;
		switch (msg.code){
			case 273:
				v=-10; w=0;
				break;
			case 274:
				v=10; w=0;
				break;
			case 275:
				v=0; w=-5;
				break;
			case 276:
				v=0; w=5;
				break;
  		}

		cmd_msg.data.push_back(v); //vx
   		cmd_msg.data.push_back(w);
		pub.publish(cmd_msg);
  		ROS_INFO("published and go: [v=%d, w=%d]", v, w);

		/*prepare for sending into uart*/
  		uart_out_message[2] = int2twocom(v);
  		uart_out_message[3] = int2twocom(w);
		uart_com(uart_out_message, 5, uart_in_message, 4, 1);
 		ros::Rate loop_rate(10000);
		loop_rate.sleep();
	}
	
	
	


private:
	ros::NodeHandle n;
	ros::Publisher pub;
	ros::Subscriber sub;

};

int main (int argc, char** argv){
	
	ros::init(argc, argv, "serial_node");
	
			   

	try
	{
		ros_ser.setPort("/dev/ttyUSB0");
		ros_ser.setBaudrate(115200);
		serial::Timeout to = serial::Timeout::simpleTimeout(1000);
		ros_ser.setTimeout(to);
		ros_ser.open();
	}
	catch (serial::IOException& e)
	{
		ROS_ERROR_STREAM("Unable to open port ");
		return -1;
	}

	if(ros_ser.isOpen()){
		ROS_INFO_STREAM("Serial Port opened");
	}else{
		return -1;
	}

	SubPub sub_pub_cmd;

	ros::spin();
 } 
