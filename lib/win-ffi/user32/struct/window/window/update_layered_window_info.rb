require 'win-ffi/user32/enum/window/update_layered_window_flag'

require 'win-ffi/core/struct/point'
require 'win-ffi/core/struct/size'
require 'win-ffi/core/struct/rect'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms632609(v=vs.85).aspx
    class UPDATELAYEREDWINDOWINFO < FFIStruct
      layout :cbSize,   :dword,
             :hdcDst,   :hdc,
             :pptDst,   POINT.ptr,
             :psize,    SIZE.ptr,
             :hdcSrc,   :hdc,
             :pptSrc,   POINT.ptr,
             :crKey,    :dword,
             :pblend,   :pointer,
             :dwFlags,  UpdateLayeredWindowFlag,
             :prcDirty, RECT.ptr

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end