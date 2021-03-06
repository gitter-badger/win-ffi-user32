require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff485968(v=vs.85).aspx
    ListBoxNotification = enum :list_box_notification, [
        :ERRSPACE,  -2,
        :SELCHANGE,  1,
        :DBLCLK,     2,
        :SELCANCEL,  3,
        :SETFOCUS,   4,
        :KILLFOCUS,  5,
    ]

    define_prefix(:LBN, ListBoxNotification)
  end
end