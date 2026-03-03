cask "portpeek" do
  version "1.1.0"
  sha256 "b2c7d790ca7852ec6c91259f0172df8ee065c954f627360c371d04f2d717c2e1"

  url "https://github.com/bysiber/PortPeek/releases/download/v#{version}/PortPeek-v#{version}-macOS.zip"
  name "PortPeek"
  desc "Menu bar app to monitor and manage listening ports"
  homepage "https://github.com/bysiber/PortPeek"

  depends_on macos: ">= :sonoma"

  app "PortPeek.app"

  zap trash: [
    "~/Library/Preferences/com.bysiber.PortPeek.plist",
  ]
end
