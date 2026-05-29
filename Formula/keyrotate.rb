class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.18.0"     # 00.00.18 (cosmetic)
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.18/keyrotate-darwin-arm64.tar.gz"
      sha256 "ab4a5784b1a3212b9d188e45b120f07eed281b0850ec5e5ae524acc414626777"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.18/keyrotate-darwin-x64.tar.gz"
      sha256 "ee1ee333d7a3b13839636473a1a89f3b97cd64483f3ef3908adf7d1f613ba391"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.18/keyrotate-linux-x64.tar.gz"
    sha256 "6d935eba6ed13e66582d3fda1d143c86406fdada158c9b378c70e9d1c533768e"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
