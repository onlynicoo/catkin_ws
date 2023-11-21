// Generated by gencpp from file exercise_1/robotMsg.msg
// DO NOT EDIT!


#ifndef EXERCISE_1_MESSAGE_ROBOTMSG_H
#define EXERCISE_1_MESSAGE_ROBOTMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace exercise_1
{
template <class ContainerAllocator>
struct robotMsg_
{
  typedef robotMsg_<ContainerAllocator> Type;

  robotMsg_()
    : roomId(0)
    , roomName()
    , batteryLevel(0)  {
    }
  robotMsg_(const ContainerAllocator& _alloc)
    : roomId(0)
    , roomName(_alloc)
    , batteryLevel(0)  {
  (void)_alloc;
    }



   typedef int32_t _roomId_type;
  _roomId_type roomId;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _roomName_type;
  _roomName_type roomName;

   typedef int32_t _batteryLevel_type;
  _batteryLevel_type batteryLevel;





  typedef boost::shared_ptr< ::exercise_1::robotMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exercise_1::robotMsg_<ContainerAllocator> const> ConstPtr;

}; // struct robotMsg_

typedef ::exercise_1::robotMsg_<std::allocator<void> > robotMsg;

typedef boost::shared_ptr< ::exercise_1::robotMsg > robotMsgPtr;
typedef boost::shared_ptr< ::exercise_1::robotMsg const> robotMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exercise_1::robotMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exercise_1::robotMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::exercise_1::robotMsg_<ContainerAllocator1> & lhs, const ::exercise_1::robotMsg_<ContainerAllocator2> & rhs)
{
  return lhs.roomId == rhs.roomId &&
    lhs.roomName == rhs.roomName &&
    lhs.batteryLevel == rhs.batteryLevel;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::exercise_1::robotMsg_<ContainerAllocator1> & lhs, const ::exercise_1::robotMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace exercise_1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::exercise_1::robotMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exercise_1::robotMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercise_1::robotMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercise_1::robotMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercise_1::robotMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercise_1::robotMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exercise_1::robotMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63d762d84c6d2e28546b87e174f0d422";
  }

  static const char* value(const ::exercise_1::robotMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63d762d84c6d2e28ULL;
  static const uint64_t static_value2 = 0x546b87e174f0d422ULL;
};

template<class ContainerAllocator>
struct DataType< ::exercise_1::robotMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exercise_1/robotMsg";
  }

  static const char* value(const ::exercise_1::robotMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exercise_1::robotMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 roomId\n"
"string roomName\n"
"int32 batteryLevel\n"
;
  }

  static const char* value(const ::exercise_1::robotMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exercise_1::robotMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roomId);
      stream.next(m.roomName);
      stream.next(m.batteryLevel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robotMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exercise_1::robotMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exercise_1::robotMsg_<ContainerAllocator>& v)
  {
    s << indent << "roomId: ";
    Printer<int32_t>::stream(s, indent + "  ", v.roomId);
    s << indent << "roomName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.roomName);
    s << indent << "batteryLevel: ";
    Printer<int32_t>::stream(s, indent + "  ", v.batteryLevel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXERCISE_1_MESSAGE_ROBOTMSG_H
