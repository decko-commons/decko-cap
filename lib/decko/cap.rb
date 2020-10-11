module Decko
  module Cap
    class << self
      def included host
        # Load DSL and Setup Up Stages
        require "capistrano/setup"

        # Includes default deployment tasks
        require "capistrano/deploy"

        require "capistrano/scm/git"
        host.install_plugin Capistrano::SCM::Git
        require "capistrano/scm/git-with-submodules"
        host.install_plugin Capistrano::SCM::Git::WithSubmodules

        require "capistrano/rvm"
        require "capistrano/bundler"
        require "capistrano/maintenance"
        require "airbrussh/capistrano"
        require "capistrano/passenger"
      end

      def each_cap_file
        tasks_dir = File.expand_path "../../capistrano/tasks", __FILE__
        Dir.glob("#{tasks_dir}/*.cap").each { |r| yield r }
      end
    end
  end
end
