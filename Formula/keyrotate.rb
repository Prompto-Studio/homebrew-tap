class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.19.0"     # 00.00.19 (cosmetic)
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.19/keyrotate-darwin-arm64.tar.gz"
      sha256 "dde15084968c5c6d4953f4aa373bae09abf11c618219bc1e4d20ab6b7f211bcb"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.19/keyrotate-darwin-x64.tar.gz"
      sha256 "b45787daae11e646c83552720c6856aaa11c0be415562f5192f6dc6416030be2"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.19/keyrotate-linux-x64.tar.gz"
    sha256 "670db407e3e3a2ddea7b29e0f2342f2ab2ba677725b4852b74d1e568e8e0666c"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
