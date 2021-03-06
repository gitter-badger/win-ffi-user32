require 'win-ffi/user32'

module WinFFI
  module User32
    if WindowsVersion >= 8
      TouchHitTestingProximity = enum :touch_hit_testing_proximity, [
          :CLOSEST,   0x000,
          :FARTHEST,  0xFFF
      ]

      define_prefix(:TOUCH_HIT_TESTING_PROXIMITY, TouchHitTestingProximity)
    end
  end
end