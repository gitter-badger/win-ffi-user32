require 'win-ffi/user32'

module WinFFI
  # WM_MOUSEACTIVATE Return Codes
  # https://msdn.microsoft.com/en-us/library/windows/desktop/ms645612(v=vs.85).aspx
  module User32
    MouseActivateReturn = enum :mouse_activate_return, [
        :ACTIVATE,         1,
        :ACTIVATEANDEAT,   2,
        :NOACTIVATE,       3,
        :NOACTIVATEANDEAT, 4
    ]

    define_prefix(:MA, MouseActivateReturn)
  end
end