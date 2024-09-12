// Generated by gencpp from file cobot_pump_ros/startPump.msg
// DO NOT EDIT!


#ifndef COBOT_PUMP_ROS_MESSAGE_STARTPUMP_H
#define COBOT_PUMP_ROS_MESSAGE_STARTPUMP_H

#include <ros/service_traits.h>


#include <cobot_pump_ros/startPumpRequest.h>
#include <cobot_pump_ros/startPumpResponse.h>


namespace cobot_pump_ros
{

struct startPump
{

typedef startPumpRequest Request;
typedef startPumpResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct startPump
} // namespace cobot_pump_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cobot_pump_ros::startPump > {
  static const char* value()
  {
    return "b8c827af12d71a112960417ecae897bc";
  }

  static const char* value(const ::cobot_pump_ros::startPump&) { return value(); }
};

template<>
struct DataType< ::cobot_pump_ros::startPump > {
  static const char* value()
  {
    return "cobot_pump_ros/startPump";
  }

  static const char* value(const ::cobot_pump_ros::startPump&) { return value(); }
};


// service_traits::MD5Sum< ::cobot_pump_ros::startPumpRequest> should match
// service_traits::MD5Sum< ::cobot_pump_ros::startPump >
template<>
struct MD5Sum< ::cobot_pump_ros::startPumpRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cobot_pump_ros::startPump >::value();
  }
  static const char* value(const ::cobot_pump_ros::startPumpRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cobot_pump_ros::startPumpRequest> should match
// service_traits::DataType< ::cobot_pump_ros::startPump >
template<>
struct DataType< ::cobot_pump_ros::startPumpRequest>
{
  static const char* value()
  {
    return DataType< ::cobot_pump_ros::startPump >::value();
  }
  static const char* value(const ::cobot_pump_ros::startPumpRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cobot_pump_ros::startPumpResponse> should match
// service_traits::MD5Sum< ::cobot_pump_ros::startPump >
template<>
struct MD5Sum< ::cobot_pump_ros::startPumpResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cobot_pump_ros::startPump >::value();
  }
  static const char* value(const ::cobot_pump_ros::startPumpResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cobot_pump_ros::startPumpResponse> should match
// service_traits::DataType< ::cobot_pump_ros::startPump >
template<>
struct DataType< ::cobot_pump_ros::startPumpResponse>
{
  static const char* value()
  {
    return DataType< ::cobot_pump_ros::startPump >::value();
  }
  static const char* value(const ::cobot_pump_ros::startPumpResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COBOT_PUMP_ROS_MESSAGE_STARTPUMP_H