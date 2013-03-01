require 'guard'
require 'guard/guard'

module Guard
  class SpinRspec < Guard

    autoload :Runner, 'guard/spin-rspec/runner'

    def initializer(watchers = [], options = {})
      super
    end

    def start
    end

    def stop
    end

    def reload
    end

    def run_all
    end

    def run_on_changes(paths)
      Runner.new.run(paths)
    end

    def run_on_removals(paths)
    end

  end
end
