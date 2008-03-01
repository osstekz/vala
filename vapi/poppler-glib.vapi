/* poppler-glib.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Poppler", lower_case_cprefix = "poppler_")]
namespace Poppler {
	[CCode (cprefix = "POPPLER_ACTION_", cheader_filename = "poppler.h")]
	public enum ActionType {
		UNKNOWN,
		GOTO_DEST,
		GOTO_REMOTE,
		LAUNCH,
		URI,
		NAMED,
		MOVIE,
	}
	[CCode (cprefix = "POPPLER_BACKEND_", cheader_filename = "poppler.h")]
	public enum Backend {
		UNKNOWN,
		SPLASH,
		CAIRO,
	}
	[CCode (cprefix = "POPPLER_DEST_", cheader_filename = "poppler.h")]
	public enum DestType {
		UNKNOWN,
		XYZ,
		FIT,
		FITH,
		FITV,
		FITR,
		FITB,
		FITBH,
		FITBV,
		NAMED,
	}
	[CCode (cprefix = "POPPLER_ERROR_", cheader_filename = "poppler.h")]
	public enum Error {
		INVALID,
		ENCRYPTED,
	}
	[CCode (cprefix = "POPPLER_FONT_TYPE_", cheader_filename = "poppler.h")]
	public enum FontType {
		UNKNOWN,
		TYPE1,
		TYPE1C,
		TYPE1COT,
		TYPE3,
		TRUETYPE,
		TRUETYPEOT,
		CID_TYPE0,
		CID_TYPE0C,
		CID_TYPE0COT,
		CID_TYPE2,
		CID_TYPE2OT,
	}
	[CCode (cprefix = "POPPLER_FORM_BUTTON_", cheader_filename = "poppler.h")]
	public enum FormButtonType {
		PUSH,
		CHECK,
		RADIO,
	}
	[CCode (cprefix = "POPPLER_FORM_CHOICE_", cheader_filename = "poppler.h")]
	public enum FormChoiceType {
		COMBO,
		LIST,
	}
	[CCode (cprefix = "POPPLER_FORM_FIELD_", cheader_filename = "poppler.h")]
	public enum FormFieldType {
		UNKNOWN,
		BUTTON,
		TEXT,
		CHOICE,
		SIGNATURE,
	}
	[CCode (cprefix = "POPPLER_FORM_TEXT_", cheader_filename = "poppler.h")]
	public enum FormTextType {
		NORMAL,
		MULTILINE,
		FILE_SELECT,
	}
	[CCode (cprefix = "POPPLER_ORIENTATION_", cheader_filename = "poppler.h")]
	public enum Orientation {
		PORTRAIT,
		LANDSCAPE,
		UPSIDEDOWN,
		SEASCAPE,
	}
	[CCode (cprefix = "POPPLER_PAGE_LAYOUT_", cheader_filename = "poppler.h")]
	public enum PageLayout {
		UNSET,
		SINGLE_PAGE,
		ONE_COLUMN,
		TWO_COLUMN_LEFT,
		TWO_COLUMN_RIGHT,
		TWO_PAGE_LEFT,
		TWO_PAGE_RIGHT,
	}
	[CCode (cprefix = "POPPLER_PAGE_MODE_", cheader_filename = "poppler.h")]
	public enum PageMode {
		UNSET,
		NONE,
		USE_OUTLINES,
		USE_THUMBS,
		FULL_SCREEN,
		USE_OC,
		USE_ATTACHMENTS,
	}
	[CCode (cprefix = "POPPLER_PAGE_TRANSITION_", cheader_filename = "poppler.h")]
	public enum PageTransitionAlignment {
		HORIZONTAL,
		VERTICAL,
	}
	[CCode (cprefix = "POPPLER_PAGE_TRANSITION_", cheader_filename = "poppler.h")]
	public enum PageTransitionDirection {
		INWARD,
		OUTWARD,
	}
	[CCode (cprefix = "POPPLER_PAGE_TRANSITION_", cheader_filename = "poppler.h")]
	public enum PageTransitionType {
		REPLACE,
		SPLIT,
		BLINDS,
		BOX,
		WIPE,
		DISSOLVE,
		GLITTER,
		FLY,
		PUSH,
		COVER,
		UNCOVER,
		FADE,
	}
	[CCode (cprefix = "POPPLER_SELECTION_", cheader_filename = "poppler.h")]
	public enum SelectionStyle {
		GLYPH,
		WORD,
		LINE,
	}
	[CCode (cprefix = "POPPLER_PERMISSIONS_", cheader_filename = "poppler.h")]
	[Flags]
	public enum Permissions {
		OK_TO_PRINT,
		OK_TO_MODIFY,
		OK_TO_COPY,
		OK_TO_ADD_NOTES,
		FULL,
	}
	[CCode (cprefix = "POPPLER_VIEWER_PREFERENCES_", cheader_filename = "poppler.h")]
	[Flags]
	public enum ViewerPreferences {
		UNSET,
		HIDE_TOOLBAR,
		HIDE_MENUBAR,
		HIDE_WINDOWUI,
		FIT_WINDOW,
		CENTER_WINDOW,
		DISPLAY_DOC_TITLE,
		DIRECTION_RTL,
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionAny {
		public Poppler.ActionType type;
		public weak string title;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionGotoDest {
		public Poppler.ActionType type;
		public weak string title;
		public weak Poppler.Dest dest;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionGotoRemote {
		public Poppler.ActionType type;
		public weak string title;
		public weak string file_name;
		public weak Poppler.Dest dest;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionLaunch {
		public Poppler.ActionType type;
		public weak string title;
		public weak string file_name;
		public weak string params;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionMovie {
		public Poppler.ActionType type;
		public weak string title;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionNamed {
		public Poppler.ActionType type;
		public weak string title;
		public weak string named_dest;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class ActionUri {
		public Poppler.ActionType type;
		public weak string title;
		public weak string uri;
	}
	[CCode (copy_function = "poppler_action_copy", cheader_filename = "poppler.h")]
	public class Action : GLib.Boxed {
		public Poppler.ActionType type;
		public weak Poppler.ActionAny any;
		public weak Poppler.ActionGotoDest goto_dest;
		public weak Poppler.ActionGotoRemote goto_remote;
		public weak Poppler.ActionLaunch launch;
		public weak Poppler.ActionUri uri;
		public weak Poppler.ActionNamed named;
		public weak Poppler.ActionMovie movie;
		public weak Poppler.Action copy ();
	}
	[CCode (copy_function = "poppler_dest_copy", cheader_filename = "poppler.h")]
	public class Dest : GLib.Boxed {
		public Poppler.DestType type;
		public int page_num;
		public double left;
		public double bottom;
		public double right;
		public double top;
		public double zoom;
		public weak string named_dest;
		public uint change_left;
		public uint change_top;
		public uint change_zoom;
		public weak Poppler.Dest copy ();
	}
	[CCode (copy_function = "poppler_fonts_iter_copy", cheader_filename = "poppler.h")]
	public class FontsIter : GLib.Boxed {
		public weak Poppler.FontsIter copy ();
		public weak string get_file_name ();
		public Poppler.FontType get_font_type ();
		public weak string get_full_name ();
		public weak string get_name ();
		public bool is_embedded ();
		public bool is_subset ();
		public bool next ();
	}
	[CCode (copy_function = "poppler_form_field_mapping_copy", cheader_filename = "poppler.h")]
	public class FormFieldMapping : GLib.Boxed {
		public weak Poppler.Rectangle area;
		public weak Poppler.FormField field;
		public weak Poppler.FormFieldMapping copy ();
		public FormFieldMapping ();
	}
	[CCode (copy_function = "poppler_image_mapping_copy", cheader_filename = "poppler.h")]
	public class ImageMapping : GLib.Boxed {
		public weak Poppler.Rectangle area;
		public weak Gdk.Pixbuf image;
		public weak Poppler.ImageMapping copy ();
		public ImageMapping ();
	}
	[CCode (copy_function = "poppler_index_iter_copy", cheader_filename = "poppler.h")]
	public class IndexIter : GLib.Boxed {
		public weak Poppler.IndexIter copy ();
		public weak Poppler.Action get_action ();
		public weak Poppler.IndexIter get_child ();
		public bool is_open ();
		public IndexIter (Poppler.Document document);
		public bool next ();
	}
	[CCode (copy_function = "poppler_link_mapping_copy", cheader_filename = "poppler.h")]
	public class LinkMapping : GLib.Boxed {
		public weak Poppler.Rectangle area;
		public weak Poppler.Action action;
		public weak Poppler.LinkMapping copy ();
		public LinkMapping ();
	}
	[CCode (copy_function = "poppler_page_transition_copy", cheader_filename = "poppler.h")]
	public class PageTransition : GLib.Boxed {
		public Poppler.PageTransitionType type;
		public Poppler.PageTransitionAlignment alignment;
		public Poppler.PageTransitionDirection direction;
		public int duration;
		public int angle;
		public double scale;
		public bool rectangular;
		public weak Poppler.PageTransition copy ();
		public PageTransition ();
	}
	[CCode (copy_function = "poppler_rectangle_copy", cheader_filename = "poppler.h")]
	public class Rectangle : GLib.Boxed {
		public double x1;
		public double y1;
		public double x2;
		public double y2;
		public weak Poppler.Rectangle copy ();
		public Rectangle ();
	}
	[CCode (cheader_filename = "poppler.h")]
	public class Attachment : GLib.Object {
		public weak string name;
		public weak string description;
		public ulong size;
		public GLib.Time mtime;
		public GLib.Time ctime;
		public weak GLib.StringBuilder checksum;
		public bool save (string filename) throws GLib.Error;
		public bool save_to_callback (Poppler.AttachmentSaveFunc save_func) throws GLib.Error;
	}
	[CCode (cheader_filename = "poppler.h")]
	public class Document : GLib.Object {
		public weak Poppler.Dest find_dest (string link_name);
		public weak GLib.List get_attachments ();
		public weak Poppler.FormField get_form_field (int id);
		public int get_n_pages ();
		public weak Poppler.Page get_page (int index);
		public weak Poppler.Page get_page_by_label (string label);
		public bool has_attachments ();
		public Document.from_data (string data, int length, string password) throws GLib.Error;
		public Document.from_file (string uri, string password) throws GLib.Error;
		public bool save (string uri) throws GLib.Error;
		[NoAccessorMethod]
		public weak string author { get; }
		[NoAccessorMethod]
		public weak int creation_date { get; }
		[NoAccessorMethod]
		public weak string creator { get; }
		[NoAccessorMethod]
		public weak string format { get; }
		[NoAccessorMethod]
		public weak string keywords { get; }
		[NoAccessorMethod]
		public weak string linearized { get; }
		[NoAccessorMethod]
		public weak string metadata { get; }
		[NoAccessorMethod]
		public weak int mod_date { get; }
		[NoAccessorMethod]
		public weak Poppler.PageLayout page_layout { get; }
		[NoAccessorMethod]
		public weak Poppler.PageMode page_mode { get; }
		[NoAccessorMethod]
		public weak Poppler.Permissions permissions { get; }
		[NoAccessorMethod]
		public weak string producer { get; }
		[NoAccessorMethod]
		public weak string subject { get; }
		[NoAccessorMethod]
		public weak string title { get; }
		[NoAccessorMethod]
		public weak Poppler.ViewerPreferences viewer_preferences { get; }
	}
	[CCode (cheader_filename = "poppler.h")]
	public class FontInfo : GLib.Object {
		public void free ();
		public FontInfo (Poppler.Document document);
		public bool scan (int n_pages, out weak Poppler.FontsIter iter);
	}
	[CCode (cheader_filename = "poppler.h")]
	public class FormField : GLib.Object {
		public Poppler.FormButtonType button_get_button_type ();
		public bool button_get_state ();
		public void button_set_state (bool state);
		public bool choice_can_select_multiple ();
		public bool choice_commit_on_change ();
		public bool choice_do_spell_check ();
		public Poppler.FormChoiceType choice_get_choice_type ();
		public weak string choice_get_item (int index);
		public int choice_get_n_items ();
		public weak string choice_get_text ();
		public bool choice_is_editable ();
		public bool choice_is_item_selected (int index);
		public void choice_select_item (int index);
		public void choice_set_text (string text);
		public void choice_toggle_item (int index);
		public void choice_unselect_all ();
		public Poppler.FormFieldType get_field_type ();
		public double get_font_size ();
		public int get_id ();
		public bool is_read_only ();
		public bool text_do_scroll ();
		public bool text_do_spell_check ();
		public int text_get_max_len ();
		public weak string text_get_text ();
		public Poppler.FormTextType text_get_text_type ();
		public bool text_is_password ();
		public bool text_is_rich_text ();
		public void text_set_text (string text);
	}
	[CCode (cheader_filename = "poppler.h")]
	public class PSFile : GLib.Object {
		public void free ();
		public PSFile (Poppler.Document document, string filename, int first_page, int n_pages);
		public void set_duplex (bool duplex);
		public void set_paper_size (double width, double height);
	}
	[CCode (cheader_filename = "poppler.h")]
	public class Page : GLib.Object {
		public weak GLib.List find_text (string text);
		public static void free_form_field_mapping (GLib.List list);
		public static void free_image_mapping (GLib.List list);
		public static void free_link_mapping (GLib.List list);
		public void get_crop_box (Poppler.Rectangle rect);
		public double get_duration ();
		public weak GLib.List get_form_field_mapping ();
		public weak GLib.List get_image_mapping ();
		public int get_index ();
		public weak GLib.List get_link_mapping ();
		public weak Gdk.Region get_selection_region (double scale, Poppler.SelectionStyle style, Poppler.Rectangle selection);
		public void get_size (out double width, out double height);
		public weak string get_text (Poppler.SelectionStyle style, Poppler.Rectangle rect);
		public weak Gdk.Pixbuf get_thumbnail ();
		public bool get_thumbnail_size (int width, int height);
		public weak Poppler.PageTransition get_transition ();
		public void render (Cairo.Context cairo);
		public void render_selection (Cairo.Context cairo, Poppler.Rectangle selection, Poppler.Rectangle old_selection, Poppler.SelectionStyle style, Gdk.Color glyph_color, Gdk.Color background_color);
		public void render_selection_to_pixbuf (double scale, int rotation, Gdk.Pixbuf pixbuf, Poppler.Rectangle selection, Poppler.Rectangle old_selection, Poppler.SelectionStyle style, Gdk.Color glyph_color, Gdk.Color background_color);
		public void render_to_pixbuf (int src_x, int src_y, int src_width, int src_height, double scale, int rotation, Gdk.Pixbuf pixbuf);
		public void render_to_ps (Poppler.PSFile ps_file);
		[NoAccessorMethod]
		public weak string label { get; }
	}
	[CCode (cheader_filename = "poppler.h")]
	public static delegate bool AttachmentSaveFunc (string buf, ulong count, pointer data, GLib.Error error);
	public const int HAS_CAIRO;
	[CCode (cheader_filename = "poppler.h")]
	public static GLib.Quark error_quark ();
	[CCode (cheader_filename = "poppler.h")]
	public static Poppler.Backend get_backend ();
	[CCode (cheader_filename = "poppler.h")]
	public static weak string get_version ();
}
