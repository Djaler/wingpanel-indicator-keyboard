project(
    'keyboard',
    'vala', 'c',
    version: '2.1.0'
)

i18n = import('i18n')
gettext_name = meson.project_name() + '-indicator'

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format(gettext_name), language:'c')

wingpanel_dep = dependency('wingpanel-2.0')

shared_module(
    meson.project_name(),
    'src/IconWidget.vala',
    'src/Indicator.vala',
    'src/KeyboardIcon.vala',
    'src/LayoutButton.vala',
    'src/LayoutsManager.vala',
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('granite'),
        dependency('gtk+-3.0'),
        dependency('libxml-2.0'),
        wingpanel_dep
    ],
    install: true,
    install_dir : wingpanel_dep.get_pkgconfig_variable('indicatorsdir')
)

subdir('data')
subdir('po')
