Gem::Specification.new do |spec|
  spec.name = "decko-cap"
  spec.summary = ""

  spec.authors = ["Ethan McCutchen", "Philipp Kühl", "Gerry Gleason"]
  spec.email = ["info@decko.org"]
  spec.homepage = "http://decko.org"
  spec.licenses = ["GPL-3.0"]
  spec.required_ruby_version = ">= 2.5"
  spec.version = 0.1
  spec.files = Dir["{lib}/**/*", "README.md"]

  [["capistrano"],
   ["capistrano-bundler"],
   ["capistrano-git-with-submodules", '~> 2.0'],
   ["capistrano-maintenance"],
   ["capistrano-passenger"],
   # ["capistrano-rvm"],
   ["airbrussh"],
   ["bcrypt_pbkdf"],
   ["ed25519"]].each do |gem|
    spec.add_runtime_dependency(*gem)
  end
end