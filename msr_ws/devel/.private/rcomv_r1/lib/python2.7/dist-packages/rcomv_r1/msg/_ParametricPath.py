# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rcomv_r1/ParametricPath.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ParametricPath(genpy.Message):
  _md5sum = "c6ff66e71430612759900cc362de36d1"
  _type = "rcomv_r1/ParametricPath"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# The Parametric Path/Trajectory Data Type.
# This is used for defining a trajectory using parametric equations

# path type
string path_type

# center location
float64 xc
float64 yc

# angular frequency
float64 wd

# Radius for the circular path
float64 R

# Radius for the eight-shaped path
float64 R1
float64 R2
"""
  __slots__ = ['path_type','xc','yc','wd','R','R1','R2']
  _slot_types = ['string','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       path_type,xc,yc,wd,R,R1,R2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ParametricPath, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.path_type is None:
        self.path_type = ''
      if self.xc is None:
        self.xc = 0.
      if self.yc is None:
        self.yc = 0.
      if self.wd is None:
        self.wd = 0.
      if self.R is None:
        self.R = 0.
      if self.R1 is None:
        self.R1 = 0.
      if self.R2 is None:
        self.R2 = 0.
    else:
      self.path_type = ''
      self.xc = 0.
      self.yc = 0.
      self.wd = 0.
      self.R = 0.
      self.R1 = 0.
      self.R2 = 0.

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
      buff.write(_get_struct_6d().pack(_x.xc, _x.yc, _x.wd, _x.R, _x.R1, _x.R2))
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
      end += 48
      (_x.xc, _x.yc, _x.wd, _x.R, _x.R1, _x.R2,) = _get_struct_6d().unpack(str[start:end])
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
      buff.write(_get_struct_6d().pack(_x.xc, _x.yc, _x.wd, _x.R, _x.R1, _x.R2))
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
      end += 48
      (_x.xc, _x.yc, _x.wd, _x.R, _x.R1, _x.R2,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
