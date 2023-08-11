/// Native system dialogs for opening and saving files.
///
/// This package is also accessible with window.__TAURI__.dialog when build.withGlobalTauri in tauri.conf.json is set to true.
///
/// The APIs must be added to tauri.allowlist.dialog in tauri.conf.json:
///
/// {
///   "tauri": {
///     "allowlist": {
///       "dialog": {
///         "all": true, // enable all dialog APIs
///         "ask": true, // enable dialog ask API
///         "confirm": true, // enable dialog confirm API
///         "message": true, // enable dialog message API
///         "open": true, // enable file open API
///         "save": true // enable file save API
///       }
///     }
///   }
/// }
///
/// It is recommended to allowlist only the APIs you use for optimal bundle size and security.

/// interface ConfirmDialogOptions {
///   /** The title of the dialog. Defaults to the app name. */
///   title?: string
///   /** The type of the dialog. Defaults to `info`. */
///   type?: 'info' | 'warning' | 'error'
///   /** The label of the confirm button. */
///   okLabel?: string
///   /** The label of the cancel button. */
///   cancelLabel?: string
/// }

module ConfirmDialogOptions = {
  @genType.import("@tauri-apps/api/dialog")
  type confirm_dialog_options

  @genType.import("@tauri-apps/api/dialog")
  external confirm: string => string => Promise.t<bool> = "confirm"
}

