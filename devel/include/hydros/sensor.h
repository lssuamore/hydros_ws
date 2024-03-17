// Generated by gencpp from file hydros/sensor.msg
// DO NOT EDIT!


#ifndef HYDROS_MESSAGE_SENSOR_H
#define HYDROS_MESSAGE_SENSOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hydros
{
template <class ContainerAllocator>
struct sensor_
{
  typedef sensor_<ContainerAllocator> Type;

  sensor_()
    : conductivity(0.0)
    , temperature(0.0)
    , depth(0.0)  {
    }
  sensor_(const ContainerAllocator& _alloc)
    : conductivity(0.0)
    , temperature(0.0)
    , depth(0.0)  {
  (void)_alloc;
    }



   typedef float _conductivity_type;
  _conductivity_type conductivity;

   typedef float _temperature_type;
  _temperature_type temperature;

   typedef float _depth_type;
  _depth_type depth;





  typedef boost::shared_ptr< ::hydros::sensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hydros::sensor_<ContainerAllocator> const> ConstPtr;

}; // struct sensor_

typedef ::hydros::sensor_<std::allocator<void> > sensor;

typedef boost::shared_ptr< ::hydros::sensor > sensorPtr;
typedef boost::shared_ptr< ::hydros::sensor const> sensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hydros::sensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hydros::sensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hydros::sensor_<ContainerAllocator1> & lhs, const ::hydros::sensor_<ContainerAllocator2> & rhs)
{
  return lhs.conductivity == rhs.conductivity &&
    lhs.temperature == rhs.temperature &&
    lhs.depth == rhs.depth;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hydros::sensor_<ContainerAllocator1> & lhs, const ::hydros::sensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hydros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hydros::sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hydros::sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hydros::sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hydros::sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hydros::sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hydros::sensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hydros::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f653f05c2a687f77b0e5d31ef180fc88";
  }

  static const char* value(const ::hydros::sensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf653f05c2a687f77ULL;
  static const uint64_t static_value2 = 0xb0e5d31ef180fc88ULL;
};

template<class ContainerAllocator>
struct DataType< ::hydros::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hydros/sensor";
  }

  static const char* value(const ::hydros::sensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hydros::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 conductivity\n"
"float32 temperature\n"
"float32 depth\n"
;
  }

  static const char* value(const ::hydros::sensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hydros::sensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.conductivity);
      stream.next(m.temperature);
      stream.next(m.depth);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hydros::sensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hydros::sensor_<ContainerAllocator>& v)
  {
    s << indent << "conductivity: ";
    Printer<float>::stream(s, indent + "  ", v.conductivity);
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
    s << indent << "depth: ";
    Printer<float>::stream(s, indent + "  ", v.depth);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HYDROS_MESSAGE_SENSOR_H
