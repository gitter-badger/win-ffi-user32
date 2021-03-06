require 'win-ffi/user32'

module WinFFI
  module User32
    # Owner draw actions
    OwnerDrawnAction = enum :owner_drawn_action, [
        :DRAWENTIRE, 0x0001,
        :SELECT,     0x0002,
        :FOCUS,      0x0004,
    ]

    define_prefix(:ODA, OwnerDrawnAction)
  end
end