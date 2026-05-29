class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.16.0"     # 00.00.16 (cosmetic)
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.16/keyrotate-darwin-arm64.tar.gz"
      sha256 "a53858182112cc16a5938afb9925fb198125a7b5ab4a5fb4071dfdf035fa12ea"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.16/keyrotate-darwin-x64.tar.gz"
      sha256 "0dc09b29d8c78c0d65f1cc5b3560d94b94f6e7423828f7c2a30b0fcc232afa19"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.16/keyrotate-linux-x64.tar.gz"
    sha256 "22316a74072ea5bf6b999454ae17ef3661c1ba178200094281543134cc5a5114"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
