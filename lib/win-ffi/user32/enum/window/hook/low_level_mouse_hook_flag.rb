require 'win-ffi/user32'

module WinFFI
  module User32
    # Low level hook flags
    LowLevelMouseHookFlag = enum :low_level_mouse_hook_flag, [
        :INJECTED,          0x00000001,
        :LOWER_IL_INJECTED, 0x00000002
    ]

    define_prefix(:LLMHF, LowLevelMouseHookFlag)
  end
end