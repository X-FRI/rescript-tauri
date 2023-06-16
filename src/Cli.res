/// Parse arguments from your Command Line Interface.
/// This package is also accessible with window.__TAURI__.cli when build.withGlobalTauri in tauri.conf.json is set to true.

module Tauri = {
  @genType("@tauri-apps/api/cli")
  type argMatch

  @genType("@tauri-apps/api/cli")
  type cliMatches

  @genType("@tauri-apps/api/cli")
  type subcommandMatch

  @module("@tauri-apps/api/cli")
  external getMatches: unit => Promise.t<cliMatches> = "getMatches"
}

let getMatches = Tauri.getMatches