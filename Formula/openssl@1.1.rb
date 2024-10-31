class OpensslAT11 < Formula
  desc "Cryptography and SSL/TLS Toolkit"
  homepage "https://www.openssl.org/"
  url "https://github.com/openssl/openssl/releases/download/OpenSSL_1_1_1w/openssl-1.1.1w.tar.gz"
  sha256 "cf3098950cb4d853ad95c0841f1f9c6d3dc102dccfcacd521d93925208b76ac8"

  def install
    system "./config --prefix=#{prefix} --openssldir=#{etc}/openssl@1.1"
    system "make"
    system "make", "install"
  end

  def caveats
    <<~EOS
      OpenSSL 1.1 has been installed in #{opt_prefix}.
      Add to PATH with:
        export PATH=#{opt_bin}:$PATH
    EOS
  end
end