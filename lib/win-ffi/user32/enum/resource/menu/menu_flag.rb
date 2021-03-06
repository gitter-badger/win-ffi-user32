require 'win-ffi/user32'

module WinFFI
  module User32
    MenuFlag = enum :menu_flag, [
      :BYCOMMAND,       0x00000000,
      :ENABLED,         0x00000000,
      :STRING,          0x00000000,
      :UNCHECKED,       0x00000000,
      :INSERT,          0x00000000,
      :UNHILITE,        0x00000000,
      :GRAYED,          0x00000001,
      :DISABLED,        0x00000002,
      :BITMAP,          0x00000004,
      :CHECKED,         0x00000008,
      :POPUP,           0x00000010,
      :MENUBARBREAK,    0x00000020,
      :MENUBREAK,       0x00000040,
      :END,             0x00000080, # Obsolete -- only used by old RES files
      :CHANGE,          0x00000080,
      :HILITE,          0x00000080,
      :OWNERDRAW,       0x00000100,
      :APPEND,          0x00000100,
      :DELETE,          0x00000200,
      :USECHECKBITMAPS, 0x00000200,
      :BYPOSITION,      0x00000400,
      :SEPARATOR,       0x00000800,
      :REMOVE,          0x00001000,
      :DEFAULT,         0x00001000,
      :SYSMENU,         0x00002000,
      :HELP,            0x00004000,
      :RIGHTJUSTIFY,    0x00004000,
      :MOUSESELECT,     0x00008000
    ]

    define_prefix(:MF, MenuFlag)
  end
end