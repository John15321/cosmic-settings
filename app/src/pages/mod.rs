// Copyright 2023 System76 <info@system76.com>
// SPDX-License-Identifier: GPL-3.0-only

use cosmic_settings_page::Entity;

pub mod desktop;
pub mod input;
pub mod networking;
pub mod sound;
pub mod system;
pub mod time;

#[derive(Clone, Debug)]
pub enum Message {
    About(system::about::Message),
    Appearance(desktop::appearance::Message),
    DateAndTime(time::date::Message),
    Desktop(desktop::Message),
    DesktopWallpaper(desktop::wallpaper::Message),
    DesktopWorkspaces(desktop::workspaces::Message),
    Displays(desktop::display::Message),
    Dock(desktop::dock::Message),
    DockApplet(desktop::dock::applets::Message),
    External { id: String, message: Vec<u8> },
    Input(input::Message),
    Page(Entity),
    Panel(desktop::panel::Message),
    PanelApplet(desktop::panel::applets_inner::Message),
}

impl From<Message> for crate::Message {
    fn from(message: Message) -> Self {
        crate::Message::PageMessage(message)
    }
}
