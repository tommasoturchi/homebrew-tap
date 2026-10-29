cask "cicero" do
  version "0.10.13"
  sha256 "149db8349055ceab859e6e1e5bd6bea7acbaf192b2e1e4f6e45a6a81d2d0ec98"

  url "https://github.com/opr-inzn/cicero/releases/download/v#{version}/Cicero.dmg"
  name "Cicero"
  desc "Font manager to browse, preview, activate and organize fonts"
  homepage "https://github.com/opr-inzn/cicero"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Cicero.app"

  # ~/Cicero/Library is left alone on purpose: it holds the user's installed fonts.
  zap trash: [
    "~/Library/Application Support/Cicero",
    "~/Library/Caches/Cicero",
    "~/Library/Caches/com.maximilianinzinger.Cicero",
    "~/Library/HTTPStorages/com.maximilianinzinger.Cicero",
    "~/Library/Preferences/com.maximilianinzinger.Cicero.plist",
    "~/Library/Saved Application State/com.maximilianinzinger.Cicero.savedState",
  ]
end
