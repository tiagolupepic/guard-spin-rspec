module Guard
  class SpinRspec
    class Runner

      def initialize(options = {})

      end

      def run(paths)
        run_command spin_push_command(paths)
      end

      def spin_push_command(paths)
        cmd = []
        cmd << "bundle exec" if bundler?
        cmd << "spin push"
        cmd << paths.select { |p| File.exist?("#{Dir.pwd}/#{p}") }.join(' ')
        cmd.join(' ')
      end

      def run_command(cmd)
        system "#{cmd}"
      end

      def bundler?
        @bundler ||= File.exist?("#{Dir.pwd}/Gemfile")
      end

    end
  end
end
