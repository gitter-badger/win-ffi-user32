require 'win-ffi/user32/enum/interaction/mouse/mouse_event_flag'
require 'win-ffi/user32/enum/interaction/keyboard/keyboard_event_flag'

module WinFFI
  module User32
    class MOUSEINPUT < FFIStruct
      layout :dx,          :long,
             :dy,          :long,
             :mouseData,   :dword,
             :dwFlags,     MouseEventFlag,
             :time,        :dword,
             :dwExtraInfo, :pointer
    end

    class KEYBDINPUT < FFIStruct
      layout :wVk,         :word,
             :wScan,       :word,
             :dwFlags,     KeyboardEventFlag,
             :time,        :dword,
             :dwExtraInfo, :pointer
    end

    class HARDWAREINPUT < FFIStruct
      layout :uMsg,    :dword,
             :wParamL, :word,
             :wParamH, :word
    end


    class INPUT_UNION < FFI::Union
      layout :mi, MOUSEINPUT,
             :ki, KEYBDINPUT,
             :hi, HARDWAREINPUT
    end

    class INPUT < FFIStruct
      layout :type, :dword,
             :u,    INPUT_UNION
    end
  end
end