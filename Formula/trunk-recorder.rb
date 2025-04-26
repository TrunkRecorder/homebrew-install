class TrunkRecorder < Formula
  desc "Trunked & Conventional Radio Recorder"
  homepage "https://github.com/TrunkRecorder/trunk-recorder"
  url "https://github.com/TrunkRecorder/trunk-recorder/archive/refs/tags/v5.0.2.tar.gz"
  sha256 "a153cf3b16b81e13e8bdb151a0c495d19a8fd46d63d8e76d9bc7750c2b0c7820"
  license "GPL-3.0-or-later"
  head "https://github.com/TrunkRecorder/trunk-recorder.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "cppunit" => :build
  depends_on "pkgconfig" => :build
  depends_on "pybind11" => :build
  depends_on "boost"
  depends_on "curl"
  depends_on "fdk-aac-encoder"
  depends_on "fmt"
  depends_on "gmp"
  depends_on "gnuradio"
  depends_on "openssl@3"
  depends_on "sox"
  depends_on "spdlog"
  depends_on "trunkrecorder/install/gr-osmosdr"
  depends_on "uhd"
  depends_on "volk"

  def install
    system "cmake", *std_cmake_args, "-B", "build"
    system "cmake", "--build", "build", "--target", "install"
  end

  test do
    # Start trunk recorder with a test configuration file and gracefully exit after a few seconds.
    # Doing so should not generate any errors.
    (testpath/"test.json").write <<~EOS
      {
        "ver": 2,
        "logLevel": "error",
        "instanceId": "**** TR TEST ****",
        "callTimeout": 11,
        "controlWarnRate": 22,
        "controlRetuneLimit": 33,
        "frequencyFormat": "hz"
      }
    EOS

    system "timeout", "-sINT", "--preserve-status", "2s",
      "trunk-recorder", "-c", testpath/"test.json"
  end
end
