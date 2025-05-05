class HyperMcp < Formula
  desc "MCP server that extends its capabilities through WebAssembly plugins."
  homepage "https://github.com/tuananh/hyper-mcp"
  url "https://github.com/tuananh/hyper-mcp/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b628478ff47a79bccc36864f301a489540f10bd5e4794723d6435a2d8e74bb3e"
  license "Apache-2.0"
  head "https://github.com/tuananh/hyper-mcp.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"hyper-mcp", "--version"
  end
end
