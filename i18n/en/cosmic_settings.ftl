app = COSMIC Settings

unknown = Unknown

number = { $number }

## Desktop

desktop = Desktop

## Desktop: Appearance

appearance = Appearance
    .desc = Accent colors and COSMIC theming.

accent-color = Accent color
app-background = Application or window background
auto = Auto
close = Close
color-picker = Color Picker
copied-to-clipboard = Copied to clipboard
copy-to-clipboard = Copy to clipboard
dark = Dark
export = Export
hex = Hex
import = Import
light = Light
mode-and-colors = Mode and Colors
recent-colors = Recent colors
reset-default = Reset to default
reset-to-default = Reset to default
rgb = RGB
window-hint-accent = Active window hint color
window-hint-accent-toggle = Use theme accent color as active window hint

auto-switch = Automatically switch from Light to Dark mode
    .desc = Switches to Light mode at sunrise

container-background = Container background
    .desc-detail = Container background color is used for navigation sidebar, side drawer, dialogs and similar widgets. By default, it is automatically derived from the Application or window background.
    .reset = Reset to auto
    .desc = Primary container color is used for navigation sidebar, side drawer, dialogs and similar widgets.

control-tint = Control component tint
    .desc = Used for backgrounds of standard buttons, search inputs, text inputs, and similar components.

frosted = Frosted glass effect on system interface
    .desc = Applies background blur to panel, dock, applets, launcher, and application library.

text-tint = Interface text tint
    .desc = Color used to derive interface text colors that have sufficient contrast on various surfaces.

style = Style
    .round = Round
    .slightly-round = Slightly round
    .square = Square

# interface density left out for now
window-management = Window Management
    .active-hint = Active window hint size
    .gaps = Gaps around tiled windows

## Desktop: Display

-requires-restart = Requires restart

color = Color
    .depth = Color depth
    .profile = Color profile
    .sidebar = Color Profiles
    .temperature = Color temperature

display = Display
    .desc = Manage displays, graphics switching, and night light
    .arrangement = Display Arrangement
    .arrangement-desc = Drag displays to rearrange them.
    .enable = Enable display
    .external = { $size } { $output } External Display
    .laptop = { $size } Laptop Display
    .options = Display Options
    .refresh-rate = Refresh rate
    .resolution = Resolution
    .scale = Scale

graphics-mode = Graphics mode
    .mode = { $mode ->
        [compute] Compute
        *[hybrid] Hybrid
        [integrated] Integrated
        [nvidia] NVIDIA
    } graphics
    .enable = Enable { $mode ->
        [compute] compute
        *[hybrid] hybrid
        [integrated] integrated
        [nvidia] NVIDIA
    } graphics
    .desc = { $mode ->
        [compute] Uses dedicated graphics for computational workloads only. Disables external displays. { -requires-restart }.
        *[hybrid] Applications use integrated graphics unless explicitly requested to use dedicated graphics. { -requires-restart }.
        [integrated] Turns off dedicated graphics for a longer battery life and less fan noise.
        [nvidia] Better graphical experience and highest power usage. { -requires-restart }.
    }
    .restart = Restart and switch to { $mode }?
    .restart-desc = Switching to { $mode } will close all open applications

mirroring = Mirroring
    .id = Mirroring { $id }
    .dont = Don't mirror
    .mirror = Mirror { $display }
    .project = Project to { $display ->
        [all] all displays
        *[other] { $display }
    }
    .project-count = Projecting to { $count} other { $count ->
        [1] display
        *[other] displays
    }

night-light = Night Light
    .auto = Automatic (sunset to sunrise)
    .desc = Reduce blue light with warmer colors.

orientation = Orientation
    .landscape = Landscape
    .landscape-flipped = Landscape (Flipped)
    .portrait = Portrait
    .portrait-flipped = Portrait (Flipped)

scheduling = Scheduling
    .manual = Manual schedule

## Desktop: Notifications

notifications = Notifications
    .desc = Do Not Disturb, lockscreen notifications, and per-application settings.

## Desktop: Options

desktop-panel-options = Desktop and Panel
    .desc = Super Key action, hot corners, window control options.

desktop-panels-and-applets = Desktop Panels and Applets

dock = Dock
    .desc = Panel with pinned applications.

hot-corner = Hot Corner
    .top-left-corner = Enable top-left hot corner for Workspaces

super-key-action = Super Key Action
    .launcher = Launcher
    .workspaces = Workspaces
    .applications = Applications

top-panel = Top Panel
    .workspaces = Show Workspaces Button
    .applications = Show Applications Button

window-controls = Window Controls
    .minimize = Show Minimize Button
    .maximize = Show Maximize Button

## Desktop: Panel

panel = Panel
    .desc = Top bar with desktop controls and menus.

add = Add
add-applet = Add Applet
all = All
applets = Applets
center-segment = Center Segment
drop-here = Drop applets here
end-segment = End Segment
large = Large
no-applets-found = No applets found...
panel-bottom = Bottom
panel-left = Left
panel-right = Right
panel-top = Top
search-applets = Search applets...
small = Small
start-segment = Start Segment

panel-appearance = Appearance
    .match = Match desktop
    .light = Light
    .dark = Dark

panel-behavior-and-position = Behavior and Positions
    .autohide = Automatically hide panel
    .dock-autohide = Automatically hide dock
    .position = Position on screen
    .display = Show on display

panel-style = Style
    .anchor-gap = Gap between panel and screen edges
    .dock-anchor-gap = Gap between dock and screen edges
    .extend = Extend panel to screen edges
    .dock-extend = Extend dock to screen edges
    .appearance = Appearance
    .size = Size
    .background-opacity = Background opacity

panel-applets = Configuration
    .dock-desc = Configure dock applets.
    .desc = Configure panel applets.

panel-missing = Panel Configuration is Missing
    .desc = The panel configuration file is missing due to use of a custom configuration or it is corrupted.
    .fix = Reset to default

## Desktop: Wallpaper

wallpaper = Wallpaper
    .change = Change image every
    .desc = Wallpaper images, colors, and slideshow options.
    .fit = Wallpaper fit
    .folder-dialog = Choose wallpaper folder
    .image-dialog = Choose wallpaper image
    .plural = Wallpapers
    .same = Same wallpaper on all displays
    .slide = Slideshow

add-color = Add color
add-image = Add image
all-displays = All Displays
colors = Colors
dialog-add = _Add
fill = Fill
fit-to-screen = Fit to Screen
open-new-folder = Open new folder
recent-folders = Recent Folders

x-minutes = { $number } minutes
x-hours = { $number ->
    [1] 1 hour
    *[other] { $number } hours
}

## Desktop: Workspaces

workspaces = Workspaces
    .desc = Set workspace number, behavior, and placement.

workspaces-behavior = Workspace Behavior
    .dynamic = Dynamic workspaces
    .dynamic-desc = Automatically removes empty workspaces.
    .fixed = Fixed Number of Workspaces
    .fixed-desc = Add or remove workspaces in the overview.

workspaces-multi-behavior = Multi-monitor Behavior
    .span = Workspaces Span Displays
    .separate = Displays Have Separate Workspaces

workspaces-overview-thumbnails = Workspace Overview Thumbnails
    .show-number = Show Workspace Number
    .show-name = Show Workspace Name

workspaces-orientation = Workspaces Orientation
    .vertical = Vertical
    .horizontal = Horizontal

## Networking: Wired

wired = Wired
    .desc = Wired connection, connection profiles

## Networking: Online Accounts

online-accounts = Online Accounts
    .desc = Add accounts, IMAP and SMTP, enterprise logins

## Time & Language

time = Time & Language
    .desc = N/A

time-date = Date & Time
    .desc = Time zone, automatic clock settings, and some time formatting.
    .auto = Set automatically

time-zone = Time Zone
    .auto = Automatic time zone
    .auto-info = Requires location services and internet access

time-format = Date & Time Format
    .twenty-four = 24-hour time
    .first = First day of week

time-region = Region & Language
    .desc = Format dates, times, and numbers based on your region

## Sound

sound = Sound
    .desc = N/A

sound-output = Output
    .volume = Output volume
    .device = Output device
    .level = Output level
    .config = Configuration
    .balance = Balance

sound-input = Input
    .volume = Input volume
    .device = Input device
    .level = Input level

sound-alerts = Alerts
    .volume = Alerts volume
    .sound = Alerts sound

sound-applications = Applications
    .desc = Application volumes and settings

## System

system = System & Accounts

## System: About

about = About
    .desc = Device name, hardware information, operating system defaults.

about-device = Device name
    .desc = This name appears to other network or bluetooth devices.

about-hardware = Hardware
    .model = Hardware model
    .memory = Memory
    .processor = Processor
    .graphics = Graphics
    .disk-capacity = Disk Capacity

about-os = Operating System
    .os = Operating system
    .os-architecture = Operating system architecture
    .desktop-environment = Desktop environment
    .windowing-system = Windowing system

about-related = Related settings
    .support = Get support

## System: Firmware

firmware = Firmware
    .desc = Firmware details.

## System: Users

users = Users
    .desc = Authentication and login, lock screen.

## Input

input = Input
    .desc = Input

## Input: Keyboard

keyboard = Keyboard
    .desc = Keyboard input

keyboard-sources = Input Sources
    .desc = Input sources can be switched using Super+Space key combination. This can be customized in the keyboard shortcut settings.
    .move-up = Move up
    .move-down = Move down
    .settings = Settings
    .view-layout = View keyboard layout
    .remove = Remove

keyboard-special-char = Special Character Entry
    .alternate = Alternate characters key
    .compose = Compose key

## Input: Keyboard: Shortcuts

keyboard-shortcuts = Keyboard Shortcuts
    .desc = View and customize shortcuts

## Input: Mouse
mouse = Mouse
    .desc = Mouse speed, acceleration, natural scrolling.
    .primary-button = Primary button
    .primary-button-left = Left
    .primary-button-right = Right
    .speed = Mouse speed
    .acceleration = Enable mouse acceleration
    .acceleration-desc = Automatically adjusts tracking sensitivty based on speed.
    .double-click-speed = Double-click speed
    .double-click-speed-desc = Changes how fast double-clicks have to be to register.

mouse-scrolling = Scrolling
    .speed = Scrolling speed
    .natural = Natural scrolling
    .natural-desc = Scroll the content, instead of the view

## Input: Touchpad

touchpad = Touchpad
    .desc = Touchpad speed, click options, gestures.
    .primary-button = Primary button
    .primary-button-left = Left
    .primary-button-right = Right
    .speed = Touchpad speed
    .acceleration = Enable touchpad acceleration
    .acceleration-desc = Automatically adjusts tracking sensitivty based on speed.
    .double-click-speed = Double-click speed
    .double-click-speed-desc = Changes how fast double-clicks have to be to register.
