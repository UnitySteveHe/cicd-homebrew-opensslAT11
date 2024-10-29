class OpensslAT11 < Formula
  desc "Cryptography and SSL/TLS Toolkit"
  homepage "https://www.openssl.org/"
  url "https://openssl.org/source/old/1.1.0/openssl-1.1.0l.tar.gz"
  sha256 "74a2f756c64fd7386a29184dc0344f4831192d61dc2481a93a4c5dd727f41148"

  def install
    system "./config", "--prefix=#{prefix}", "--openssldir=#{etc}/openssl@1.1"
    system "make"
    system "make", "test" # optional, for testing
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