###
# This file is autogenerated from https://github.com/buildpacks/pack/tree/main/.github/workflows/delivery/homebrew/
# Changes should be committed there. 
###
class Pack < Formula
  desc "A CLI for building apps using Cloud Native Buildpacks"
  homepage "https://github.com/buildpacks/pack"
  if OS.mac? && Hardware::CPU.arm?
    url "{{MACOS_ARM64_URL}}"
    sha256 "{{MACOS_ARM64_SHA}}"
  elsif OS.mac?
    url "{{MACOS_URL}}"
    sha256 "{{MACOS_SHA}}"
  else 
    url "{{LINUX_URL}}"
    sha256 "{{LINUX_SHA}}"
  end

  def install
    bin.install "pack"
  end
end
