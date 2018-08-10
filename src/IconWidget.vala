public class IconWidget : Gtk.Grid {
    public string icon_name { get; set; }

    construct {
        var icon = new Gtk.Image ();
        icon.pixel_size = 24;

        valign = Gtk.Align.CENTER;
        add (icon);

        bind_property ("icon-name", icon, "icon-name", GLib.BindingFlags.BIDIRECTIONAL | GLib.BindingFlags.SYNC_CREATE);
    }
}