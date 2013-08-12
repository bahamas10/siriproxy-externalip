$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-externalip"
  s.version     = "0.3"
  s.authors     = ["Dave Eddy <dave@daveeddy.com>"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{Get your external IP address}
  s.description = s.summary

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
