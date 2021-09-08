// Generated by gencpp from file mushr_coordination/GoalPoseArray.msg
// DO NOT EDIT!


#ifndef MUSHR_COORDINATION_MESSAGE_GOALPOSEARRAY_H
#define MUSHR_COORDINATION_MESSAGE_GOALPOSEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/PoseArray.h>

namespace mushr_coordination
{
template <class ContainerAllocator>
struct GoalPoseArray_
{
  typedef GoalPoseArray_<ContainerAllocator> Type;

  GoalPoseArray_()
    : header()
    , scale(0.0)
    , minx(0.0)
    , miny(0.0)
    , maxx(0.0)
    , maxy(0.0)
    , goals()  {
    }
  GoalPoseArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , scale(0.0)
    , minx(0.0)
    , miny(0.0)
    , maxx(0.0)
    , maxy(0.0)
    , goals(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _scale_type;
  _scale_type scale;

   typedef double _minx_type;
  _minx_type minx;

   typedef double _miny_type;
  _miny_type miny;

   typedef double _maxx_type;
  _maxx_type maxx;

   typedef double _maxy_type;
  _maxy_type maxy;

   typedef std::vector< ::geometry_msgs::PoseArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseArray_<ContainerAllocator> >::other >  _goals_type;
  _goals_type goals;





  typedef boost::shared_ptr< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> const> ConstPtr;

}; // struct GoalPoseArray_

typedef ::mushr_coordination::GoalPoseArray_<std::allocator<void> > GoalPoseArray;

typedef boost::shared_ptr< ::mushr_coordination::GoalPoseArray > GoalPoseArrayPtr;
typedef boost::shared_ptr< ::mushr_coordination::GoalPoseArray const> GoalPoseArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mushr_coordination::GoalPoseArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mushr_coordination::GoalPoseArray_<ContainerAllocator1> & lhs, const ::mushr_coordination::GoalPoseArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.scale == rhs.scale &&
    lhs.minx == rhs.minx &&
    lhs.miny == rhs.miny &&
    lhs.maxx == rhs.maxx &&
    lhs.maxy == rhs.maxy &&
    lhs.goals == rhs.goals;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mushr_coordination::GoalPoseArray_<ContainerAllocator1> & lhs, const ::mushr_coordination::GoalPoseArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mushr_coordination

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "78e0bbacea7802e400e4e187b7b7763b";
  }

  static const char* value(const ::mushr_coordination::GoalPoseArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x78e0bbacea7802e4ULL;
  static const uint64_t static_value2 = 0x00e4e187b7b7763bULL;
};

template<class ContainerAllocator>
struct DataType< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mushr_coordination/GoalPoseArray";
  }

  static const char* value(const ::mushr_coordination::GoalPoseArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 scale\n"
"float64 minx\n"
"float64 miny\n"
"float64 maxx\n"
"float64 maxy\n"
"geometry_msgs/PoseArray[] goals\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseArray\n"
"# An array of poses with a header for global reference.\n"
"\n"
"Header header\n"
"\n"
"Pose[] poses\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::mushr_coordination::GoalPoseArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.scale);
      stream.next(m.minx);
      stream.next(m.miny);
      stream.next(m.maxx);
      stream.next(m.maxy);
      stream.next(m.goals);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GoalPoseArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mushr_coordination::GoalPoseArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mushr_coordination::GoalPoseArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "scale: ";
    Printer<double>::stream(s, indent + "  ", v.scale);
    s << indent << "minx: ";
    Printer<double>::stream(s, indent + "  ", v.minx);
    s << indent << "miny: ";
    Printer<double>::stream(s, indent + "  ", v.miny);
    s << indent << "maxx: ";
    Printer<double>::stream(s, indent + "  ", v.maxx);
    s << indent << "maxy: ";
    Printer<double>::stream(s, indent + "  ", v.maxy);
    s << indent << "goals[]" << std::endl;
    for (size_t i = 0; i < v.goals.size(); ++i)
    {
      s << indent << "  goals[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "    ", v.goals[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MUSHR_COORDINATION_MESSAGE_GOALPOSEARRAY_H