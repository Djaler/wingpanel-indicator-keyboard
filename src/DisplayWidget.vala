public class DisplayWidget : Gtk.Box {
    private Gtk.Image icon;

    public string icon_name {
        set {
            //icon.set_from_file("/usr/share/icons/hicolor/24x24/status/"+value+".svg");
            icon.icon_name = value;
        }
    }

    public DisplayWidget () {
        Object (orientation: Gtk.Orientation.HORIZONTAL);
    }

    construct {
        icon = new Gtk.Image ();

        pack_start (icon);
    }
}
