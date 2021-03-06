require 'win-ffi/user32/enum/interaction/pointer/pointer_message_flag'
require 'win-ffi/core/macro/util'

module WinFFI
  module User32
    class << self
      include WinFFI

      # Macros to retrieve information from pointer input message parameters

      #define GET_POINTERID_WPARAM(wParam)                (LOWORD(wParam))
      def GET_POINTERID_WPARAM(wParam)
        loword(wParam)
      end

      #define IS_POINTER_FLAG_SET_WPARAM(wParam, flag)    (((DWORD)HIWORD(wParam) & (flag)) == (flag))
      def IS_POINTER_FLAG_SET_WPARAM(wParam, flag)
        hiword(wParam) & PointerMessageFlag[flag] == PointerMessageFlag[flag]
      end

      PointerMessageFlag.symbols.each do |flag|
        define_method("IS_POINTER_#{flag}_WPARAM", ->(wParam) do
          hiword(wParam) & PointerMessageFlag[flag] == PointerMessageFlag[flag]
        end)
      end
    end
  end
end

