class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.15.0"     # 00.00.15 (cosmetic)
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.15/keyrotate-darwin-arm64.tar.gz"
      sha256 "55d2b129929a0ce7d811ce4ef755dba031061f7fa169f437ff864be099c5aa7c"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.15/keyrotate-darwin-x64.tar.gz"
      sha256 "27d636223f86885c553ba247f81c61da1a840de55c5cd6c9baad3f6da076c7ba"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.15/keyrotate-linux-x64.tar.gz"
    sha256 "31d5c15d0d7bf68e5213e64910ca7f18488e2ded056b3f22186d11857cf5927d"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
