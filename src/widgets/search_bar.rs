// SPDX-License-Identifier: GPL-3.0-only

use gtk4::{
	glib::{self, clone, Object},
	prelude::*,
	subclass::prelude::*,
	Button, Entry, Image,
};
use std::cell::RefCell;

glib::wrapper! {
	pub struct SearchBar(ObjectSubclass<SearchBarImp>)
		@extends gtk4::Widget,
		@implements gtk4::Accessible;
}

impl SearchBar {
	pub fn new() -> Self {
		Self::default()
	}
}

#[derive(Debug, Default)]
pub struct SearchBarImp {
	holder: RefCell<gtk4::Box>,
}

#[glib::object_subclass]
impl ObjectSubclass for SearchBarImp {
	const NAME: &'static str = "SearchBar";
	type Type = SearchBar;
	type ParentType = gtk4::Widget;
	type Interfaces = ();
	type Instance = glib::subclass::basic::InstanceStruct<Self>;
	type Class = glib::subclass::basic::ClassStruct<Self>;

	fn class_init(klass: &mut Self::Class) {
		// The layout manager determines how child widgets are laid out.
		klass.set_layout_manager_type::<gtk4::BinLayout>();
	}
}

impl ObjectImpl for SearchBarImp {
	fn constructed(&self, obj: &Self::Type) {
		self.parent_constructed(obj);

		let holder = gtk4::Box::builder()
			.orientation(gtk4::Orientation::Horizontal)
			.spacing(10)
			.margin_top(10)
			.margin_bottom(10)
			.css_classes(vec!["search-bar-inactive".into()])
			.build();

		let image = Image::builder()
			.icon_name("folder-saved-search-symbolic")
			.build();
		let search_button = Button::builder()
			.child(&image)
			.css_classes(vec!["search-button".into()])
			.margin_start(10)
			.build();
		holder.append(&search_button);

		let entry = Entry::builder()
			.placeholder_text("Find a setting...")
			.css_classes(vec!["search-bar-entry".into()])
			.build();
		entry.hide();
		search_button.connect_clicked(clone!(@weak holder, @weak entry => move |_| {
			if entry.get_visible() {
				holder.set_css_classes(&["search-bar-inactive"]);
				entry.hide();
			}  else {
				holder.set_css_classes(&["search-bar"]);
				entry.show();
			}
		}));
		holder.append(&entry);

		holder.set_parent(obj);
		*self.holder.borrow_mut() = holder;
	}
}

impl WidgetImpl for SearchBarImp {}

impl Default for SearchBar {
	fn default() -> Self {
		Object::new(&[]).expect("Failed to create `SearchBar`.")
	}
}
