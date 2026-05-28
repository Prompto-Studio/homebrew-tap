class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v0.3.0/keyrotate-darwin-arm64.tar.gz"
      sha256 "923479ecd5710a9e1d9ddb60ec28cf8512d4a232407273913065357a69db7a6c"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v0.3.0/keyrotate-darwin-x64.tar.gz"
      sha256 "9906b8b91dfad85674cb8dc490456a3bf614defb082d7ab9edb42d9d8e46a236"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v0.3.0/keyrotate-linux-x64.tar.gz"
    sha256 "5a92730dc810f99c6274d2d4a040b4751e0f944653f005341f8bec2a78d92eb8"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
