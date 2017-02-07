# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'efi/version'

Gem::Specification.new do |spec|
  spec.name          = "efi"
  spec.version       = Efi::VERSION
  spec.authors       = ["Andris Ļaksa"]
  spec.email         = ["2slow2fast@gmail.com"]

  spec.summary       = %q{Mounting EFI partitions made easy. A convenient alternative to EFI Mounter. Works only on macOS.}
  spec.homepage      = "https://github.com/lks128/efi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables   = ["efi"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.13.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "plist", "~> 3.2"
end
