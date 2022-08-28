# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pyredactkit < Formula
  include Language::Python::Virtualenv

  desc "Python CLI tool to redact and un-redact sensitive data from text files. 🔐📝"
  homepage "https://github.com/brootware/PyRedactKit"
  url "https://files.pythonhosted.org/packages/54/83/0bb2fbe85fbc5b0bf71cd6ce191012d5c1f8a22d743e1c4a1b070ed781fa/pyredactkit-1.0.2.tar.gz"
  version "1.0.2"
  sha256 "1fa6a40c8db9cd083d0ad64c32cd1c1c645433f99a93ac402a057813c5d49fc7"
  license "GPL-3.0-or-later"

  depends_on "python"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
    system "python", "-m", "pip", "install", "--upgrade","pyredactkit"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test pyredactkit`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
