# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Crackle < Formula
  desc "Crack and decrypt BLE encryption"
  homepage "https://github.com/mikeryan/crackle/"
  license "BSD-2-Clause"
  head "https://github.com/mikeryan/crackle.git"

  # depends_on "cmake" => :build
  # wow this is pretty basic but I guess It'll do for now.
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method

    system "make", "CC=#{ENV.cc}", "PREFIX=#{prefix}", "INSTALL_DIR=#{prefix}/bin"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test crackle`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
