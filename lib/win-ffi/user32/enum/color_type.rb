require 'win-ffi/user32'

module WinFFI
  module User32

    buffer = [
        :SCROLLBAR,       0, # Scroll bar gray area.
        :BACKGROUND,         # Desktop.
        :DESKTOP,         1, # Desktop.
        :ACTIVECAPTION,   2, # Active window_class title bar. Specifies the left side color in the color gradient of an
        # active window_class's title bar if the gradient effect is enabled.

        :INACTIVECAPTION, 3, # Inactive window_class caption. Specifies the left side color in the color gradient of an
        # inactive window_class's title bar if the gradient effect is enabled.

        :MENU,            4, # Menu background.
        :WINDOW,          5, # Window background.
        :WINDOWFRAME,     6, # Window frame.
        :MENUTEXT,        7, # Text in menus.
        :WINDOWTEXT,      8, # Text in windows.
        :CAPTIONTEXT,     9, # Text in caption, size box, and scroll bar arrow box.
        :ACTIVEBORDER,   10, # Active window_class border.
        :INACTIVEBORDER, 11, # Inactive window_class border.
        :APPWORKSPACE,   12, # Background color of multiple document interface (MDI) applications.
        :HIGHLIGHT,      13, # Item(s) selected in a control.
        :HIGHLIGHTTEXT,  14, # Text of item(s) selected in a control.
        :'3DFACE',       15,
        :BTNFACE,        15, # Face color for three-dimensional display elements and for dialog box backgrounds.
        :'3DSHADOW',     16,
        :BTNSHADOW,      16, # Shadow color for three-dimensional display elements (for edges facing away from the light source).
        :GRAYTEXT,       17, # Grayed (disabled) text. This color is set to 0 if the current display driver does not support a solid gray color.
        :BTNTEXT,        18, # Text on push buttons.
        :INACTIVECAPTIONTEXT, 19, # Color of text in an inactive caption.
        :'3DHILIGHT',    20,
        :'3DHIGHLIGHT',  20,
        :BTNHILIGHT,     20,
        :BTNHIGHLIGHT,   20, # Highlight color for three-dimensional display elements(for edges facing the light source)
        :'3DDKSHADOW',   21, # Dark shadow for three-dimensional display elements.
        :'3DLIGHT',      22, # Light color for three-dimensional display elements (for edges facing the light source.)
        :INFOTEXT,       23, # Text color for tooltip controls.
        :INFOBK,         24, # Background color for tooltip controls.
        :HOTLIGHT,       26, # Color for a hyperlink or hot-tracked item.

        :GRADIENTACTIVECAPTION, 27, # Right side color in the color gradient of an active window_class's title bar.
        # :ACTIVECAPTION specifies the left side color. Use SPI_GETGRADIENTCAPTIONS with the SystemParametersInfo
        # function to determine whether the gradient effect is enabled.

        :GRADIENTINACTIVECAPTION, 28, # Right side color in the color gradient of an inactive window_class's title bar.
        # :INACTIVECAPTION specifies the left side color.
    ]

    if WindowsVersion >= :xp
      buffer += [
          :MENUHILIGHT, 29, # The color used to highlight menu items when the menu appears as a flat menu (see
          # SystemParametersInfo). The highlighted menu item is outlined with :HIGHLIGHT.

          :MENUBAR, 30  #The background color for the menu bar when menus appear as flat menus. However, :MENU continues
          # to specify the background color of the menu popup.
      ]
    end

    ColorType = enum :color_type, buffer
  end
end
