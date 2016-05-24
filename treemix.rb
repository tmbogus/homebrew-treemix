class Treemix < Formula
  desc "TreeMix is a method for inferring the patterns of population splits and mixtures in the history of a set of populations. In the underlying model, the modern-day populations in a species are related to a common ancestor via a graph of ancestral populations. We use the allele frequencies in the modern populations to infer the structure of this graph."
  homepage "http://pritchardlab.stanford.edu/software.html"
  url "https://bitbucket.org/nygcresearch/treemix/downloads/treemix-1.12.tar.gz"
  version "1.12"
  sha256 "28ca3b9ac85fa2a8432f1856123b75e7e845eb38052378439d6bbbe38e1d60e6"

  depends_on "gsl"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

end
