$:.push File.expand_path("../lib", __FILE__)

if ENV['DEVELOPMENT']
  VERSION = `git describe --tags`.strip.gsub('-', '.')[1..-1]
else
  require 'rugged'
  VERSION = Rugged::Version
end

Gem::Specification.new do |s|
  s.name                  = "rugged"
  s.version               = VERSION
  s.date                  = Time.now.strftime('%Y-%m-%d')
  s.summary               = "Rugged is a Ruby binding to the libgit2 linkable library"
  s.homepage              = "https://github.com/libgit2/rugged"
  s.email                 = "schacon@gmail.com"
  s.authors               = [ "Scott Chacon", "Vicent Marti" ]
  s.license               = "MIT"
  s.files                 = %w( README.md LICENSE )
  s.files                 += Dir.glob("lib/**/*.rb")
  s.required_ruby_version = '>= 1.9.3'
  s.description           = <<~DESC
    Rugged is a Ruby bindings to the libgit2 linkable C Git library.
    This is a no-op version to make gem install of licensed quicker.
  DESC
end
