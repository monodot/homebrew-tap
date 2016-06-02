class HawkularBtm < Formula
  desc "Hawkular BTM"
  homepage "http://www.hawkular.org/docs/components/btm/index.html"
  url "https://github.com/hawkular/hawkular-btm/releases/download/0.8.0.Final/hawkular-btm-dist-0.8.0.Final.zip"
  #url "http://localhost:8888/dists/jboss-fuse-full-6.2.1.redhat-084.zip"
  version "0.8.0"
  sha256 "85dbfc888eec98294b71125c0cf6e962b633bf0298bb5e810fa0a701185c03a0"

  bottle :unneeded

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    # Must be installed to libexec because `start`, `stop`, etc should not be symlinked
  end

  def caveats; <<-EOS.undent
    The home of Hawkular BTM is:
      #{opt_libexec}
  EOS
  end
end
