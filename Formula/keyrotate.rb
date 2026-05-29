class Keyrotate < Formula
  desc "One-command API-key rotator — 1Password, GitHub, Supabase, Netlify, Fly.io, .env"
  homepage "https://github.com/Prompto-Studio/keyrotate"
  version "0.17.0"     # 00.00.17 (cosmetic)
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.17/keyrotate-darwin-arm64.tar.gz"
      sha256 "379141fe34872568305d80fdeaad9dc44e31d61cbef5048b12b299052e33f1db"
    end
    on_intel do
      url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.17/keyrotate-darwin-x64.tar.gz"
      sha256 "5c8a4393c562f7167ae8b11126b299a99c50d2af322a36b76f54042ad592a923"
    end
  end

  on_linux do
    url "https://github.com/Prompto-Studio/keyrotate/releases/download/v00.00.17/keyrotate-linux-x64.tar.gz"
    sha256 "72893ba232011c349ee3c07cc31c7afdc2135a8d72ffc82f9ea377110480a26a"
  end

  def install
    bin.install "keyrotate"
    bin.install_symlink bin/"keyrotate" => "kr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keyrotate version")
  end
end
