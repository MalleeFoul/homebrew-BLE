cask "nrfconnect-ble" do
  version "4.0.4"
  sha256 "c0d83110cf91de11257038fb8d9921c632273b6fe3ea52dfc3eac585fa19b73a"

  url "https://github.com/NordicPlayground/pc-nrfconnect-ble-standalone/releases/download/v#{version}/nrfconnect-bluetooth-low-energy-#{version}.dmg"
  name "NRFconnect BLE"
  desc "bluetooth low energy app for nRF Connect for Desktop"
  homepage ""

  app "nRF Connect for Desktop Bluetooth Low Energy.app"
end
