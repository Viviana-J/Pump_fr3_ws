// Generated by gencpp from file cobot_pump_ros/hci_action_srv.msg
// DO NOT EDIT!


#ifndef COBOT_PUMP_ROS_MESSAGE_HCI_ACTION_SRV_H
#define COBOT_PUMP_ROS_MESSAGE_HCI_ACTION_SRV_H

#include <ros/service_traits.h>


#include <cobot_pump_ros/hci_action_srvRequest.h>
#include <cobot_pump_ros/hci_action_srvResponse.h>


namespace cobot_pump_ros
{

struct hci_action_srv
{

typedef hci_action_srvRequest Request;
typedef hci_action_srvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct hci_action_srv
} // namespace cobot_pump_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cobot_pump_ros::hci_action_srv > {
  static const char* value()
  {
    return "c43a3220bfd54c72b40a7f1b9339aa4f";
  }

  static const char* value(const ::cobot_pump_ros::hci_action_srv&) { return value(); }
};

template<>
struct DataType< ::cobot_pump_ros::hci_action_srv > {
  static const char* value()
  {
    return "cobot_pump_ros/hci_action_srv";
  }

  static const char* value(const ::cobot_pump_ros::hci_action_srv&) { return value(); }
};


// service_traits::MD5Sum< ::cobot_pump_ros::hci_action_srvRequest> should match
// service_traits::MD5Sum< ::cobot_pump_ros::hci_action_srv >
template<>
struct MD5Sum< ::cobot_pump_ros::hci_action_srvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cobot_pump_ros::hci_action_srv >::value();
  }
  static const char* value(const ::cobot_pump_ros::hci_action_srvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cobot_pump_ros::hci_action_srvRequest> should match
// service_traits::DataType< ::cobot_pump_ros::hci_action_srv >
template<>
struct DataType< ::cobot_pump_ros::hci_action_srvRequest>
{
  static const char* value()
  {
    return DataType< ::cobot_pump_ros::hci_action_srv >::value();
  }
  static const char* value(const ::cobot_pump_ros::hci_action_srvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cobot_pump_ros::hci_action_srvResponse> should match
// service_traits::MD5Sum< ::cobot_pump_ros::hci_action_srv >
template<>
struct MD5Sum< ::cobot_pump_ros::hci_action_srvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cobot_pump_ros::hci_action_srv >::value();
  }
  static const char* value(const ::cobot_pump_ros::hci_action_srvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cobot_pump_ros::hci_action_srvResponse> should match
// service_traits::DataType< ::cobot_pump_ros::hci_action_srv >
template<>
struct DataType< ::cobot_pump_ros::hci_action_srvResponse>
{
  static const char* value()
  {
    return DataType< ::cobot_pump_ros::hci_action_srv >::value();
  }
  static const char* value(const ::cobot_pump_ros::hci_action_srvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COBOT_PUMP_ROS_MESSAGE_HCI_ACTION_SRV_H
