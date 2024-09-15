// Generated by gencpp from file cobot_pump_ros/hci_action_srvResponse.msg
// DO NOT EDIT!


#ifndef COBOT_PUMP_ROS_MESSAGE_HCI_ACTION_SRVRESPONSE_H
#define COBOT_PUMP_ROS_MESSAGE_HCI_ACTION_SRVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cobot_pump_ros
{
template <class ContainerAllocator>
struct hci_action_srvResponse_
{
  typedef hci_action_srvResponse_<ContainerAllocator> Type;

  hci_action_srvResponse_()
    : action()  {
      action.assign(0.0);
  }
  hci_action_srvResponse_(const ContainerAllocator& _alloc)
    : action()  {
  (void)_alloc;
      action.assign(0.0);
  }



   typedef boost::array<float, 7>  _action_type;
  _action_type action;





  typedef boost::shared_ptr< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct hci_action_srvResponse_

typedef ::cobot_pump_ros::hci_action_srvResponse_<std::allocator<void> > hci_action_srvResponse;

typedef boost::shared_ptr< ::cobot_pump_ros::hci_action_srvResponse > hci_action_srvResponsePtr;
typedef boost::shared_ptr< ::cobot_pump_ros::hci_action_srvResponse const> hci_action_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator1> & lhs, const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.action == rhs.action;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator1> & lhs, const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cobot_pump_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c43a3220bfd54c72b40a7f1b9339aa4f";
  }

  static const char* value(const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc43a3220bfd54c72ULL;
  static const uint64_t static_value2 = 0xb40a7f1b9339aa4fULL;
};

template<class ContainerAllocator>
struct DataType< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cobot_pump_ros/hci_action_srvResponse";
  }

  static const char* value(const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[7] action\n"
;
  }

  static const char* value(const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct hci_action_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cobot_pump_ros::hci_action_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "action[]" << std::endl;
    for (size_t i = 0; i < v.action.size(); ++i)
    {
      s << indent << "  action[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.action[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // COBOT_PUMP_ROS_MESSAGE_HCI_ACTION_SRVRESPONSE_H