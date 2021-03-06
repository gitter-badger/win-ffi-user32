require 'win-ffi/user32/enum/accessibility/filter_keys_flag'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd318079(v=vs.85).aspx
    class FILTERKEYS < FFIStruct
      layout :cbSize,      :uint,
             :dwFlags,     FilterKeysFlag,
             :iWaitMSec,   :dword, # Acceptance Delay,
             :iDelayMSec,  :dword, # Delay Until Repeat,
             :iRepeatMSec, :dword, # Repeat Rate,
             :iBounceMSec, :dword  # Debounce Time

      def initialize
        super
        self.cbSize = self.size
      end
    end
  end
end