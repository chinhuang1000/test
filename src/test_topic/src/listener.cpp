/*publishing while subscribing*/

#include "ros/ros.h"
#include "std_msgs/String.h"


class SubPub 
{
public:
	SubPub(){

		pub = n.advertise<std_msgs::String>("cmd_publisher", 1);	
	
		sub = n.subscribe("chatter", 1000, &SubPub::chatterCallback, this);
		
	}

	void chatterCallback(const std_msgs::String& msg){

		pub.publish(msg);
		ROS_INFO_STREAM("PUBLISHING");
	}
	
	
	


private:
	ros::NodeHandle n;
	ros::Publisher pub;
	ros::Subscriber sub;

};

int main (int argc, char** argv){
	
	ros::init(argc, argv, "listener");
	SubPub sub_pub_cmd;
			   
	ros::spin();
 } 
