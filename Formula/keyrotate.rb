class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v0.3.1/keyrotate-darwin-arm64.tar.gz"
      sha256 "325126d831818149dd3eaa3ebc11b241b269fc4f51d07af2584fa8804243d4aa"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v0.3.1/keyrotate-darwin-x64.tar.gz"
      sha256 "b5e9de92de8533a2ae0e1978eef97e7c075ab79b320b9a5149a55e40d2e521fb"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v0.3.1/keyrotate-linux-x64.tar.gz"
    sha256 "565c93157025170f42132decbdde91d5a34ba58c14d4da17c55d679e93826b5c"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
