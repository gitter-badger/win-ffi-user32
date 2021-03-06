require 'win-ffi/user32'

module WinFFI
  module User32
    GetMenuDefaultItemFlag = enum :get_menu_default_item_flag, [
        :USEDISABLED,  0x0001,
        :GOINTOPOPUPS, 0x0002
    ]

    define_prefix(:GMDI, GetMenuDefaultItemFlag)
  end
end