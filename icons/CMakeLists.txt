set (SYSTEM_DEFAULT_THEME ${CMAKE_INSTALL_PREFIX}/share/icons/elementary)

install (FILES english-symbolic.svg DESTINATION ${SYSTEM_DEFAULT_THEME}/status/symbolic)
install (FILES russian-symbolic.svg DESTINATION ${SYSTEM_DEFAULT_THEME}/status/symbolic)

install(CODE "execute_process(COMMAND update-icon-caches ${SYSTEM_DEFAULT_THEME})")