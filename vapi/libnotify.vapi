/* libnotify.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Notify", lower_case_cprefix = "notify_")]
namespace Notify {
	[CCode (cprefix = "NOTIFY_URGENCY_", cheader_filename = "libnotify/notify.h")]
	public enum Urgency {
		LOW,
		NORMAL,
		CRITICAL,
	}
	[CCode (cheader_filename = "libnotify/notify.h")]
	public class Notification : GLib.Object {
		public void add_action (string action, string label, Notify.ActionCallback callback, GLib.FreeFunc free_func);
		public void attach_to_status_icon (Gtk.StatusIcon status_icon);
		public void attach_to_widget (Gtk.Widget attach);
		public void clear_actions ();
		public void clear_hints ();
		public bool close () throws GLib.Error;
		public Notification (string summary, string body, string icon, Gtk.Widget attach);
		public Notification.with_status_icon (string summary, string body, string icon, Gtk.StatusIcon status_icon);
		public void set_category (string category);
		public void set_geometry_hints (Gdk.Screen screen, int x, int y);
		public void set_hint_byte (string key, uchar value);
		public void set_hint_byte_array (string key, uchar[] value, ulong len);
		public void set_hint_double (string key, double value);
		public void set_hint_int32 (string key, int value);
		public void set_hint_string (string key, string value);
		public void set_icon_from_pixbuf (Gdk.Pixbuf icon);
		public void set_timeout (int timeout);
		public void set_urgency (Notify.Urgency urgency);
		public bool show () throws GLib.Error;
		public bool update (string summary, string body, string icon);
		[NoAccessorMethod]
		public weak Gtk.Widget attach_widget { get; set construct; }
		[NoAccessorMethod]
		public weak string body { get; set construct; }
		[NoAccessorMethod]
		public weak string icon_name { get; set construct; }
		[NoAccessorMethod]
		public weak Gtk.StatusIcon status_icon { get; set construct; }
		[NoAccessorMethod]
		public weak string summary { get; set construct; }
		public signal void closed ();
	}
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static delegate void ActionCallback (Notify.Notification p1, string p2, pointer p3);
	public const int EXPIRES_DEFAULT;
	public const int EXPIRES_NEVER;
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static weak string get_app_name ();
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static weak GLib.List get_server_caps ();
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static bool get_server_info (out weak string ret_name, out weak string ret_vendor, out weak string ret_version, out weak string ret_spec_version);
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static bool init (string app_name);
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static bool is_initted ();
	[CCode (cheader_filename = "libnotify/notify.h")]
	public static void uninit ();
}
