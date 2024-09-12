// Generated by gencpp from file cobot_pump_ros/checkItemAttachedResponse.msg
// DO NOT EDIT!


#ifndef COBOT_PUMP_ROS_MESSAGE_CHECKITEMATTACHEDRESPONSE_H
#define COBOT_PUMP_ROS_MESSAGE_CHECKITEMATTACHEDRESPONSE_H


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
struct checkItemAttachedResponse_
{
  typedef checkItemAttachedResponse_<ContainerAllocator> Type;

  checkItemAttachedResponse_()
    : itemAttached(false)  {
    }
  checkItemAttachedResponse_(const ContainerAllocator& _alloc)
    : itemAttached(false)  {
  (void)_alloc;
    }



   typedef uint8_t _itemAttached_type;
  _itemAttached_type itemAttached;





  typedef boost::shared_ptr< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct checkItemAttachedResponse_

typedef ::cobot_pump_ros::checkItemAttachedResponse_<std::allocator<void> > checkItemAttachedResponse;

typedef boost::shared_ptr< ::cobot_pump_ros::checkItemAttachedResponse > checkItemAttachedResponsePtr;
typedef boost::shared_ptr< ::cobot_pump_ros::checkItemAttachedResponse const> checkItemAttachedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator1> & lhs, const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.itemAttached == rhs.itemAttached;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator1> & lhs, const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cobot_pump_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "247832619fa5dc1b609564c0b8dfd0c8";
  }

  static const char* value(const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x247832619fa5dc1bULL;
  static const uint64_t static_value2 = 0x609564c0b8dfd0c8ULL;
};

template<class ContainerAllocator>
struct DataType< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cobot_pump_ros/checkItemAttachedResponse";
  }

  static const char* value(const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool itemAttached\n"
;
  }

  static const char* value(const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.itemAttached);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct checkItemAttachedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cobot_pump_ros::checkItemAttachedResponse_<ContainerAllocator>& v)
  {
    s << indent << "itemAttached: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.itemAttached);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COBOT_PUMP_ROS_MESSAGE_CHECKITEMATTACHEDRESPONSE_H