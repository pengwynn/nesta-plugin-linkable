# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta-plugin-linkable/version"

Gem::Specification.new do |s|
  s.name        = "nesta-plugin-linkable"
  s.version     = Nesta::Plugin::Linkable::VERSION
  s.authors     = ["Wynn Netherland"]
  s.email       = ["wynn.netherland@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Link posts for Nesta}
  s.description = %q{Link posts for Nesta CMS}

  s.rubyforge_project = "nesta-plugin-linkable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("nesta", ">= 0.9.11")
  s.add_development_dependency("rake")
end
