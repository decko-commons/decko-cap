module Decko
  module Cap
    def self.included host
      # Load DSL and Setup Up Stages
      require "capistrano"
      require "capistrano/setup"
      require "capistrano/rvm"
      require "capistrano/bundler"
      require "capistrano/maintenance"
      require "airbrussh/capistrano"
      require "capistrano/passenger"

      require "bcrypt_pbkdf"
      require "ed25519"

      # Includes default deployment tasks
      require "capistrano/deploy"
      require "capistrano/scm/git"
      require "capistrano/scm/git-with-submodules"

      host.install_plugin Capistrano::SCM::Git
      host.install_plugin Capistrano::SCM::Git::WithSubmodules
    end

    
  end
end
