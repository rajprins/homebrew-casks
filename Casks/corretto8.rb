cask "corretto8" do
  version "8.292.10.1"
  md5 "16e896e21b6cf77f08ddc84cf91724de"

  url "https://corretto.aws/downloads/resources/#{version.sub(/-\d+/, "")}/amazon-corretto-#{version}-macosx-x64.pkg"
  name "AWS Corretto JDK 8"
  desc "OpenJDK 8 distribution from Amazon"
  homepage "https://corretto.aws/"

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end