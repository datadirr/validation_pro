#include "include/validation_pro/validation_pro_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "validation_pro_plugin.h"

void ValidationProPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  validation_pro::ValidationProPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
