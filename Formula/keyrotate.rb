class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "00.00.04"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.04/keyrotate-darwin-arm64.tar.gz"
      sha256 "ed2f688c59c4f91714d5d52454917c7796b91fddaaa66f50afd5085dc62441b9"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.04/keyrotate-darwin-x64.tar.gz"
      sha256 "8304dee6fef31a5e8c8880299d75750b80ad7ee565e91893716bd9076a163a81"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.04/keyrotate-linux-x64.tar.gz"
    sha256 "9c2148760a87abf7448a54716e8968d37b1d7ecb3fc21a14c1cab88141689d0c"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
