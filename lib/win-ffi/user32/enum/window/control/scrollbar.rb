require 'win-ffi/user32'

module WinFFI
  module User32
    # Scroll Bar Constants
    Scrollbar = enum :scroll_bar, [
        :HORZ,
        :VERT,
        :CTL,
        :BOTH,

        # Scroll Bar Commands
        :LINEUP,        0,
        :LINELEFT,      0,
        :LINEDOWN,      1,
        :LINERIGHT,     1,
        :PAGEUP,        2,
        :PAGELEFT,      2,
        :PAGEDOWN,      3,
        :PAGERIGHT,     3,
        :THUMBPOSITION, 4,
        :THUMBTRACK,    5,
        :TOP,           6,
        :LEFT,          6,
        :BOTTOM,        7,
        :RIGHT,         7,
        :ENDSCROLL,     8
    ]

    define_prefix(:SB, Scrollbar)
  end
end