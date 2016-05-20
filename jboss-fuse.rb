class JbossFuse < Formula
  desc "JBoss Fuse"
  homepage "https://www.redhat.com/en/technologies/jboss-middleware/fuse"
  #url "https://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.tar.gz"
  #url "https://access.redhat.com/jbossnetwork/restricted/softwareDownload.html?softwareId=41311"
  url "http://localhost:8888/dists/jboss-fuse-full-6.2.1.redhat-084.zip"
  version "6.2.1"
  sha256 "e5bdb31df14dd8bb17886a7a4232e3fbce0cce86b5e6ddfbb3d3f84e244fd9ff"

  bottle :unneeded

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    # Must be installed to libexec because `start`, `stop`, etc should not be symlinked
  end

  def caveats; <<-EOS.undent
    The home of JBoss Fuse is:
      #{opt_libexec}
    Note: The support scripts used by JBoss Fuse have
    very generic names. These are likely to conflict with support scripts
    used by other Java-based server software. Hence they are *NOT* linked
    to bin.
  EOS
  end
end
