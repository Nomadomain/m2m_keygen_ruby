# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `guard-rspec` gem.
# Please instead update this file by running `bin/tapioca gem guard-rspec`.

# NOTE: To avoid 'superclass mismatch for class RSpec' errors,
# every file has to have
#
#   class RSpec < Plugin
#
# and not just
#
#   class RSpec
#
# source://guard-rspec-4.7.3/lib/guard/rspec/options.rb:1
module Guard; end

# source://guard-rspec-4.7.3/lib/guard/rspec/options.rb:2
class Guard::RSpec < ::Guard::Plugin
  # @return [RSpec] a new instance of RSpec
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:20
  def initialize(options = T.unsafe(nil)); end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:18
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:18
  def options=(_arg0); end

  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:36
  def reload; end

  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:32
  def run_all; end

  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:40
  def run_on_modifications(paths); end

  # Returns the value of attribute runner.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:18
  def runner; end

  # Sets the attribute runner
  #
  # @param value the value to set the attribute runner to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:18
  def runner=(_arg0); end

  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:27
  def start; end

  private

  # source://guard-rspec-4.7.3/lib/guard/rspec.rb:47
  def _throw_if_failed; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:8
class Guard::RSpec::Command < ::String
  # @return [Command] a new instance of Command
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:13
  def initialize(paths, options = T.unsafe(nil)); end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:11
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:11
  def options=(_arg0); end

  # Returns the value of attribute paths.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:11
  def paths; end

  # Sets the attribute paths
  #
  # @param value the value to set the attribute paths to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:11
  def paths=(_arg0); end

  private

  # @return [Boolean]
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:61
  def _cmd_include_formatter?; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:65
  def _guard_formatter; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:21
  def _parts; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:31
  def _paths(options); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:42
  def _rspec_formatters; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:37
  def _visual_formatter; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/command.rb:9
Guard::RSpec::Command::FAILURE_EXIT_CODE = T.let(T.unsafe(nil), Integer)

# source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:3
class Guard::RSpec::Deprecator
  # @return [Deprecator] a new instance of Deprecator
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:10
  def initialize(options = T.unsafe(nil)); end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:4
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:4
  def options=(_arg0); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:14
  def warns_about_deprecated_options; end

  private

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:81
  def _deprecated(message); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:41
  def _exclude_option; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:71
  def _focus_on_failed_option; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:61
  def _keep_failed_option; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:25
  def _spec_opts_env; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:50
  def _use_cmd_option; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:33
  def _version_option; end

  class << self
    # source://guard-rspec-4.7.3/lib/guard/rspec/deprecator.rb:6
    def warns_about_deprecated_options(options = T.unsafe(nil)); end
  end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:3
module Guard::RSpec::Inspectors; end

# source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:4
class Guard::RSpec::Inspectors::BaseInspector
  # @return [BaseInspector] a new instance of BaseInspector
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:7
  def initialize(options = T.unsafe(nil)); end

  # @raise [NotImplementedError]
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:17
  def failed(_locations); end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:5
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:5
  def options=(_arg0); end

  # @raise [NotImplementedError]
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:13
  def paths(_paths); end

  # @raise [NotImplementedError]
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:21
  def reload; end

  # Returns the value of attribute spec_paths.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:5
  def spec_paths; end

  # Sets the attribute spec_paths
  #
  # @param value the value to set the attribute spec_paths to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:5
  def spec_paths=(_arg0); end

  private

  # Leave only spec/feature files from spec_paths, remove others
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:28
  def _clean(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:57
  def _collect_files(pattern); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:65
  def _paths_with_chdir(paths, chdir); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:36
  def _select_only_spec_dirs(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:43
  def _select_only_spec_files(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/base_inspector.rb:53
  def _spec_paths_with_chdir; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/factory.rb:8
class Guard::RSpec::Inspectors::Factory
  class << self
    # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/factory.rb:10
    def create(options = T.unsafe(nil)); end
  end
end

# Inspector that focuses on set of paths if any of them is failing.
# Returns only that set of paths on all future calls to #paths
# until they all pass
#
# source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:9
class Guard::RSpec::Inspectors::FocusedInspector < ::Guard::RSpec::Inspectors::BaseInspector
  # @return [FocusedInspector] a new instance of FocusedInspector
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:12
  def initialize(options = T.unsafe(nil)); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:25
  def failed(locations); end

  # Returns the value of attribute focused_locations.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:10
  def focused_locations; end

  # Sets the attribute focused_locations
  #
  # @param value the value to set the attribute focused_locations to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:10
  def focused_locations=(_arg0); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:17
  def paths(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/focused_inspector.rb:33
  def reload; end
end

# Inspector that remembers all failed paths and
# returns that paths in future calls to #paths method
# along with any new paths passed as parameter to #paths
#
# source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:9
class Guard::RSpec::Inspectors::KeepingInspector < ::Guard::RSpec::Inspectors::BaseInspector
  # @return [KeepingInspector] a new instance of KeepingInspector
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:12
  def initialize(options = T.unsafe(nil)); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:21
  def failed(locations); end

  # Returns the value of attribute failed_locations.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:10
  def failed_locations; end

  # Sets the attribute failed_locations
  #
  # @param value the value to set the attribute failed_locations to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:10
  def failed_locations=(_arg0); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:17
  def paths(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:25
  def reload; end

  private

  # Extract file path from location
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:39
  def _location_path(location); end

  # Return paths + failed locations.
  # Do not include location in result if its path is already included.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/keeping_inspector.rb:33
  def _with_failed_locations(paths); end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/simple_inspector.rb:6
class Guard::RSpec::Inspectors::SimpleInspector < ::Guard::RSpec::Inspectors::BaseInspector
  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/simple_inspector.rb:11
  def failed(_locations); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/simple_inspector.rb:7
  def paths(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/inspectors/simple_inspector.rb:15
  def reload; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:3
class Guard::RSpec::Notifier
  # @return [Notifier] a new instance of Notifier
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:6
  def initialize(options = T.unsafe(nil)); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:10
  def notify(summary); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:21
  def notify_failure; end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:4
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:4
  def options=(_arg0); end

  private

  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:38
  def _image(failure_count, pending_count); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:31
  def _parse_summary(summary); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/notifier.rb:48
  def _priority(image); end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/options.rb:3
module Guard::RSpec::Options
  class << self
    # source://guard-rspec-4.7.3/lib/guard/rspec/options.rb:19
    def with_defaults(options = T.unsafe(nil)); end

    private

    # source://guard-rspec-4.7.3/lib/guard/rspec/options.rb:25
    def _deep_merge(hash1, hash2); end
  end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/options.rb:4
Guard::RSpec::Options::DEFAULTS = T.let(T.unsafe(nil), Hash)

# source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:5
class Guard::RSpec::RSpecProcess
  # @return [RSpecProcess] a new instance of RSpecProcess
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:11
  def initialize(command, formatter_tmp_file, options = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:21
  def all_green?; end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:9
  def options; end

  # Returns the value of attribute results.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:9
  def results; end

  private

  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:56
  def _read_results; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:42
  def _really_run; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:27
  def _run; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:80
  def _warn_unless_absolute_path(formatter_tmp_file); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:69
  def _with_desired_bundler_env; end

  # Returns the value of attribute command.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:88
  def command; end

  # Returns the value of attribute exit_code.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:89
  def exit_code; end

  # Returns the value of attribute formatter_tmp_file.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:90
  def formatter_tmp_file; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/rspec_process.rb:6
class Guard::RSpec::RSpecProcess::Failure < ::RuntimeError; end

# source://guard-rspec-4.7.3/lib/guard/rspec/results.rb:3
class Guard::RSpec::Results
  # @return [Results] a new instance of Results
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/results.rb:10
  def initialize(filename); end

  # Returns the value of attribute failed_paths.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/results.rb:8
  def failed_paths; end

  # Returns the value of attribute summary.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/results.rb:7
  def summary; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/results.rb:4
class Guard::RSpec::Results::InvalidData < ::RuntimeError; end

# source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:11
class Guard::RSpec::Runner
  # @return [Runner] a new instance of Runner
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:20
  def initialize(options = T.unsafe(nil)); end

  # Returns the value of attribute inspector.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:18
  def inspector; end

  # Sets the attribute inspector
  #
  # @param value the value to set the attribute inspector to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:18
  def inspector=(_arg0); end

  # Returns the value of attribute notifier.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:18
  def notifier; end

  # Sets the attribute notifier
  #
  # @param value the value to set the attribute notifier to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:18
  def notifier=(_arg0); end

  # Returns the value of attribute options.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:18
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:18
  def options=(_arg0); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:45
  def reload; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:34
  def run(paths); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:26
  def run_all; end

  private

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:77
  def _open_launchy; end

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:61
  def _really_run(cmd, options); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:84
  def _results_file(results_file, chdir); end

  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:51
  def _run(paths, options, &block); end
end

# source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:12
class Guard::RSpec::Runner::NoCmdOptionError < ::RuntimeError
  # @return [NoCmdOptionError] a new instance of NoCmdOptionError
  #
  # source://guard-rspec-4.7.3/lib/guard/rspec/runner.rb:13
  def initialize; end
end

# source://guard-rspec-4.7.3/lib/guard/rspec_defaults.rb:2
class Guard::RSpecDefaults; end

# source://guard-rspec-4.7.3/lib/guard/rspec_defaults.rb:3
Guard::RSpecDefaults::TEMPORARY_FILE_PATH = T.let(T.unsafe(nil), String)
