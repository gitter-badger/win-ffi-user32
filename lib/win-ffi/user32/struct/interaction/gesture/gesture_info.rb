require 'win-ffi/user32/enum/interaction/gesture/gesture_flag'
require 'win-ffi/user32/enum/interaction/gesture/gesture_identifier'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd353232(v=vs.85).aspx
    class GESTUREINFO < FFIStruct
      layout :cbSize,       :uint,   # size, in bytes, of this structure (including variable length Args field),
             :dwFlags,      GestureFlag,        # see GF_* flags,
             :dwID,         GestureIdentifier,  # gesture ID, see GID_* defines,
             :hwndTarget,   :hwnd,   # handle to window targeted by this gesture,
             :ptsLocation,  :pointer, # current location of this gesture,
             :dwInstanceID, :dword,  # internally used,
             :dwSequenceID, :dword,  # internally used,
             :ullArguments, :ulong,  # arguments for gestures whose arguments fit in 8 BYTES,
             :cbExtraArgs,  :uint    # size, in bytes, of extra arguments, if any, that accompany this gesture

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end