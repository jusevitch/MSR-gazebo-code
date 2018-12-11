# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rcomv_r1/CubicPath.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CubicPath(genpy.Message):
  _md5sum = "fd1af34fecb10a7d71d4740943397d74"
  _type = "rcomv_r1/CubicPath"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# The Cubic Polynomials Path/Trajectory Data Type.
# This is used for defining a trajectory using cubic polynomials equations

# path type
string path_type

# inital location
float64 qi_x
float64 qi_y
float64 qi_theta

# final location
float64 qf_x
float64 qf_y
float64 qf_theta

# total travel time
float64 T

# cubic polynomial parameter
float64 poly_k
"""
  __slots__ = ['path_type','qi_x','qi_y','qi_theta','qf_x','qf_y','qf_theta','T','poly_k']
  _slot_types = ['string','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       path_type,qi_x,qi_y,qi_theta,qf_x,qf_y,qf_theta,T,poly_k

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CubicPath, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.path_type is None:
        self.path_type = ''
      if self.qi_x is None:
        self.qi_x = 0.
      if self.qi_y is None:
        self.qi_y = 0.
      if self.qi_theta is None:
        self.qi_theta = 0.
      if self.qf_x is None:
        self.qf_x = 0.
      if self.qf_y is None:
        self.qf_y = 0.
      if self.qf_theta is None:
        self.qf_theta = 0.
      if self.T is None:
        self.T = 0.
      if self.poly_k is None:
        self.poly_k = 0.
    else:
      self.path_type = ''
      self.qi_x = 0.
      self.qi_y = 0.
      self.qi_theta = 0.
      self.qf_x = 0.
      self.qf_y = 0.
      self.qf_theta = 0.
      self.T = 0.
      self.poly_k = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.path_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.qi_x, _x.qi_y, _x.qi_theta, _x.qf_x, _x.qf_y, _x.qf_theta, _x.T, _x.poly_k))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path_type = str[start:end].decode('utf-8')
      else:
        self.path_type = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.qi_x, _x.qi_y, _x.qi_theta, _x.qf_x, _x.qf_y, _x.qf_theta, _x.T, _x.poly_k,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.path_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_8d().pack(_x.qi_x, _x.qi_y, _x.qi_theta, _x.qf_x, _x.qf_y, _x.qf_theta, _x.T, _x.poly_k))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path_type = str[start:end].decode('utf-8')
      else:
        self.path_type = str[start:end]
      _x = self
      start = end
      end += 64
      (_x.qi_x, _x.qi_y, _x.qi_theta, _x.qf_x, _x.qf_y, _x.qf_theta, _x.T, _x.poly_k,) = _get_struct_8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8d = None
def _get_struct_8d():
    global _struct_8d
    if _struct_8d is None:
        _struct_8d = struct.Struct("<8d")
    return _struct_8d