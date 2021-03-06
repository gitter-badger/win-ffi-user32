require 'win-ffi/user32'

module WinFFI
  module User32
    UpdateLayeredWindowFlag = enum :layered_window_attributes_flag, [
        :COLORKEY,    0x00000001, # Use crKey as the transparency color.
        :ALPHA,       0x00000002, # Use bAlpha to determine the opacity of the layered window_class.
        :OPAQUE,      0x00000004, # Draw an opaque layered window_class.
        :EX_NORESIZE, 0x00000008,
    ]

    define_prefix(:ULW, UpdateLayeredWindowFlag)
  end
end