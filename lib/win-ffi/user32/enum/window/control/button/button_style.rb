require 'win-ffi/user32'

module WinFFI
  module User32
    # Button Control Styles
    ButtonStyle = enum :button_style, [
      :PUSHBUTTON,       0x00000000,
      :TEXT,             0x00000000,
      :DEFPUSHBUTTON,    0x00000001,
      :CHECKBOX,         0x00000002,
      :AUTOCHECKBOX,     0x00000003,
      :RADIOBUTTON,      0x00000004,
      :'3STATE',         0x00000005,
      :AUTO3STATE,       0x00000006,
      :GROUPBOX,         0x00000007,
      :USERBUTTON,       0x00000008,
      :AUTORADIOBUTTON,  0x00000009,
      :PUSHBOX,          0x0000000A,
      :OWNERDRAW,        0x0000000B,
      :TYPEMASK,         0x0000000F,
      :RIGHTBUTTON,      0x00000020,
      :LEFTTEXT,         0x00000020,
      :ICON,             0x00000040,
      :BITMAP,           0x00000080,
      :LEFT,             0x00000100,
      :RIGHT,            0x00000200,
      :CENTER,           0x00000300,
      :TOP,              0x00000400,
      :BOTTOM,           0x00000800,
      :VCENTER,          0x00000C00,
      :PUSHLIKE,         0x00001000,
      :MULTILINE,        0x00002000,
      :NOTIFY,           0x00004000,
      :FLAT,             0x00008000
    ]

    define_prefix(:BS, ButtonStyle)
  end
end