require_relative "dotnet-requirement"

class NugetPublishAction < Formula
  desc "dotnet tool homebrew poc"
  homepage "https://github.com/test-alp/nuget-publish-action"
  url "https://nuget.org/api/v2/package/NugetPublishAction/0.0.34"
  sha256 "163e4db288a35393a902de4ec58ac750b82d50afede6ec53d4dad382ac0b68e8"

  depends_on DotnetRequirement

  def install
    system "dotnet", "tool", "install", "NugetPublishAction", "--add-source", "#{Dir.pwd}", "--tool-path", "#{libexec}/bin"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  
end
