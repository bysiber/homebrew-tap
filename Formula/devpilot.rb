class Devpilot < Formula
  desc "AI-Powered Developer Command Center for macOS"
  homepage "https://github.com/bysiber/DevPilot"
  url "https://github.com/bysiber/DevPilot/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/DevPilot" => "devpilot"
  end

  def caveats
    <<~EOS
      DevPilot is a menu bar app. Run it with:
        devpilot

      Optional dependencies for full feature set:
        - Ollama (ollama.com) for AI chat
        - Docker for container management

      Global hotkey: ⌘ + ⇧ + D
    EOS
  end

  test do
    assert_predicate bin/"devpilot", :exist?
  end
end
