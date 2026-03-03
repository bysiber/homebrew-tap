cask "portpeek" do
  version "1.0.0"
  sha256 "75258d6df2aec9ffb99012b9c506312d1232b8f6949b091a9d4e06cba624d6f5"

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
