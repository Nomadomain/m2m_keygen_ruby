# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rspec-support` gem.
# Please instead update this file by running `bin/tapioca gem rspec-support`.

module RSpec
  extend ::RSpec::Support::Warnings
  extend ::RSpec::Core::Warnings

  class << self
    def clear_examples; end
    def configuration; end
    def configuration=(_arg0); end
    def configure; end
    def const_missing(name); end
    def context(*args, &example_group_block); end
    def current_example; end
    def current_example=(example); end
    def current_scope; end
    def current_scope=(scope); end
    def define_context(name, namespace: T.unsafe(nil), ns: T.unsafe(nil), silent: T.unsafe(nil), print_context: T.unsafe(nil), &block); end
    def describe(*args, &example_group_block); end
    def example_group(*args, &example_group_block); end
    def fcontext(*args, &example_group_block); end
    def fdescribe(*args, &example_group_block); end
    def reset; end
    def shared_context(name, *args, &block); end
    def shared_examples(name, *args, &block); end
    def shared_examples_for(name, *args, &block); end
    def world; end
    def world=(_arg0); end
    def xcontext(*args, &example_group_block); end
    def xdescribe(*args, &example_group_block); end
  end
end

class RSpec::CallerFilter
  class << self
    def first_non_rspec_line(skip_frames = T.unsafe(nil), increment = T.unsafe(nil)); end
  end
end

RSpec::CallerFilter::ADDITIONAL_TOP_LEVEL_FILES = T.let(T.unsafe(nil), Array)
RSpec::CallerFilter::IGNORE_REGEX = T.let(T.unsafe(nil), Regexp)
RSpec::CallerFilter::LIB_REGEX = T.let(T.unsafe(nil), Regexp)
RSpec::CallerFilter::RSPEC_LIBS = T.let(T.unsafe(nil), Array)
RSpec::MODULES_TO_AUTOLOAD = T.let(T.unsafe(nil), Hash)
RSpec::SharedContext = RSpec::Core::SharedContext

module RSpec::Support
  class << self
    def class_of(object); end
    def define_optimized_require_for_rspec(lib, &require_relative); end
    def deregister_matcher_definition(&block); end
    def failure_notifier; end
    def failure_notifier=(callable); end
    def is_a_matcher?(object); end
    def matcher_definitions; end
    def method_handle_for(object, method_name); end
    def notify_failure(failure, options = T.unsafe(nil)); end
    def register_matcher_definition(&block); end
    def require_rspec_core(f); end
    def require_rspec_expectations(f); end
    def require_rspec_matchers(f); end
    def require_rspec_mocks(f); end
    def require_rspec_support(f); end
    def rspec_description_for_object(object); end
    def thread_local_data; end
    def warning_notifier; end
    def warning_notifier=(_arg0); end
    def with_failure_notifier(callable); end
  end
end

module RSpec::Support::AllExceptionsExceptOnesWeMustNotRescue
  class << self
    def ===(exception); end
  end
end

RSpec::Support::AllExceptionsExceptOnesWeMustNotRescue::AVOID_RESCUING = T.let(T.unsafe(nil), Array)

class RSpec::Support::BlockSignature < ::RSpec::Support::MethodSignature
  def classify_parameters; end
end

class RSpec::Support::ComparableVersion
  include ::Comparable

  def initialize(string); end

  def <=>(other); end
  def segments; end
  def string; end
end

RSpec::Support::DEFAULT_FAILURE_NOTIFIER = T.let(T.unsafe(nil), Proc)
RSpec::Support::DEFAULT_WARNING_NOTIFIER = T.let(T.unsafe(nil), Proc)

class RSpec::Support::Differ
  def initialize(opts = T.unsafe(nil)); end

  def color?; end
  def diff(actual, expected); end
  def diff_as_object(actual, expected); end
  def diff_as_string(actual, expected); end

  private

  def add_old_hunk_to_hunk(hunk, oldhunk); end
  def add_to_output(output, string); end
  def all_strings?(*args); end
  def any_multiline_strings?(*args); end
  def blue(text); end
  def build_hunks(actual, expected); end
  def coerce_to_string(string_or_array); end
  def color(text, color_code); end
  def color_diff(diff); end
  def diffably_stringify(array); end
  def finalize_output(output, final_line); end
  def format_type; end
  def green(text); end
  def handle_encoding_errors(actual, expected); end
  def hash_to_string(hash); end
  def multiline?(string); end
  def no_numbers?(*args); end
  def no_procs?(*args); end
  def normal(text); end
  def object_to_string(object); end
  def red(text); end
  def safely_flatten(array); end
end

class RSpec::Support::DirectoryMaker
  class << self
    def mkdir_p(path); end

    private

    def directory_exists?(dirname); end
    def generate_path(stack, part); end
    def generate_stack(path); end
  end
end

class RSpec::Support::EncodedString
  def initialize(string, encoding = T.unsafe(nil)); end

  def <<(string); end
  def ==(*args, &block); end
  def empty?(*args, &block); end
  def encoding(*args, &block); end
  def eql?(*args, &block); end
  def lines(*args, &block); end
  def source_encoding; end
  def split(regex_or_string); end
  def to_s; end
  def to_str; end

  private

  def detect_source_encoding(string); end
  def matching_encoding(string); end
  def remove_invalid_bytes(string); end

  class << self
    def pick_encoding(source_a, source_b); end
  end
end

RSpec::Support::EncodedString::REPLACE = T.let(T.unsafe(nil), String)
RSpec::Support::EncodedString::US_ASCII = T.let(T.unsafe(nil), String)
RSpec::Support::EncodedString::UTF_8 = T.let(T.unsafe(nil), String)

module RSpec::Support::FuzzyMatcher
  class << self
    def values_match?(expected, actual); end

    private

    def arrays_match?(expected_list, actual_list); end
    def hashes_match?(expected_hash, actual_hash); end
  end
end

class RSpec::Support::HunkGenerator
  def initialize(actual, expected); end

  def hunks; end

  private

  def actual_lines; end
  def build_hunk(piece); end
  def context_lines; end
  def diffs; end
  def expected_lines; end
end

RSpec::Support::KERNEL_METHOD_METHOD = T.let(T.unsafe(nil), UnboundMethod)

class RSpec::Support::LooseSignatureVerifier < ::RSpec::Support::MethodSignatureVerifier
  private

  def split_args(*args); end
end

class RSpec::Support::LooseSignatureVerifier::SignatureWithKeywordArgumentsMatcher
  def initialize(signature); end

  def has_kw_args_in?(args); end
  def invalid_kw_args_from(_kw_args); end
  def missing_kw_args_from(_kw_args); end
  def non_kw_args_arity_description; end
  def valid_non_kw_args?(*args); end
end

class RSpec::Support::MethodSignature
  def initialize(method); end

  def arbitrary_kw_args?; end
  def classify_arity(arity = T.unsafe(nil)); end
  def classify_parameters; end
  def could_contain_kw_args?(args); end
  def description; end
  def has_kw_args_in?(args); end
  def invalid_kw_args_from(given_kw_args); end
  def max_non_kw_args; end
  def min_non_kw_args; end
  def missing_kw_args_from(given_kw_args); end
  def non_kw_args_arity_description; end
  def optional_kw_args; end
  def required_kw_args; end
  def unlimited_args?; end
  def valid_non_kw_args?(positional_arg_count, optional_max_arg_count = T.unsafe(nil)); end
end

RSpec::Support::MethodSignature::INFINITY = T.let(T.unsafe(nil), Float)

class RSpec::Support::MethodSignatureExpectation
  def initialize; end

  def empty?; end
  def expect_arbitrary_keywords; end
  def expect_arbitrary_keywords=(_arg0); end
  def expect_unlimited_arguments; end
  def expect_unlimited_arguments=(_arg0); end
  def keywords; end
  def keywords=(values); end
  def max_count; end
  def max_count=(number); end
  def min_count; end
  def min_count=(number); end
end

class RSpec::Support::MethodSignatureVerifier
  def initialize(signature, args = T.unsafe(nil)); end

  def error_message; end
  def kw_args; end
  def max_non_kw_args; end
  def min_non_kw_args; end
  def non_kw_args; end
  def valid?; end
  def with_expectation(expectation); end

  private

  def arbitrary_kw_args?; end
  def invalid_kw_args; end
  def missing_kw_args; end
  def split_args(*args); end
  def unlimited_args?; end
  def valid_non_kw_args?; end
end

class RSpec::Support::Mutex < ::Thread::Mutex
  class << self
    def new; end
  end
end

RSpec::Support::Mutex::NEW_MUTEX_METHOD = T.let(T.unsafe(nil), Method)

module RSpec::Support::OS
  private

  def windows?; end
  def windows_file_path?; end

  class << self
    def windows?; end
    def windows_file_path?; end
  end
end

class RSpec::Support::ObjectFormatter
  def initialize(max_formatted_output_length = T.unsafe(nil)); end

  def format(object); end
  def max_formatted_output_length; end
  def max_formatted_output_length=(_arg0); end
  def prepare_array(array); end
  def prepare_element(element); end
  def prepare_for_inspection(object); end
  def prepare_hash(input_hash); end
  def recursive_structure?(object); end
  def sort_hash_keys(input_hash); end
  def with_entering_structure(structure); end

  private

  def truncate_string(str, start_index, end_index); end

  class << self
    def default_instance; end
    def format(object); end
    def prepare_for_inspection(object); end
  end
end

class RSpec::Support::ObjectFormatter::BaseInspector < ::Struct
  def formatter; end
  def formatter=(_); end
  def inspect; end
  def object; end
  def object=(_); end
  def pretty_print(pp); end

  class << self
    def [](*_arg0); end
    def can_inspect?(_object); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

class RSpec::Support::ObjectFormatter::BigDecimalInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end

  class << self
    def can_inspect?(object); end
  end
end

class RSpec::Support::ObjectFormatter::DateTimeInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end

  class << self
    def can_inspect?(object); end
  end
end

RSpec::Support::ObjectFormatter::DateTimeInspector::FORMAT = T.let(T.unsafe(nil), String)

class RSpec::Support::ObjectFormatter::DelegatorInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end

  class << self
    def can_inspect?(object); end
  end
end

class RSpec::Support::ObjectFormatter::DescribableMatcherInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end

  class << self
    def can_inspect?(object); end
  end
end

RSpec::Support::ObjectFormatter::ELLIPSIS = T.let(T.unsafe(nil), String)
RSpec::Support::ObjectFormatter::INSPECTOR_CLASSES = T.let(T.unsafe(nil), Array)

class RSpec::Support::ObjectFormatter::InspectableItem < ::Struct
  def inspect; end
  def pretty_print(pp); end
  def text; end
  def text=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

class RSpec::Support::ObjectFormatter::InspectableObjectInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end

  class << self
    def can_inspect?(object); end
  end
end

class RSpec::Support::ObjectFormatter::TimeInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end

  class << self
    def can_inspect?(object); end
  end
end

RSpec::Support::ObjectFormatter::TimeInspector::FORMAT = T.let(T.unsafe(nil), String)

class RSpec::Support::ObjectFormatter::UninspectableObjectInspector < ::RSpec::Support::ObjectFormatter::BaseInspector
  def inspect; end
  def klass; end
  def native_object_id; end

  class << self
    def can_inspect?(object); end
  end
end

RSpec::Support::ObjectFormatter::UninspectableObjectInspector::OBJECT_ID_FORMAT = T.let(T.unsafe(nil), String)

module RSpec::Support::RecursiveConstMethods
  def const_defined_on?(mod, const_name); end
  def constants_defined_on(mod); end
  def get_const_defined_on(mod, const_name); end
  def normalize_const_name(const_name); end
  def recursive_const_defined?(const_name); end
  def recursive_const_get(const_name); end
end

class RSpec::Support::ReentrantMutex
  def initialize; end

  def synchronize; end

  private

  def enter; end
  def exit; end
end

module RSpec::Support::Ruby
  private

  def jruby?; end
  def jruby_9000?; end
  def jruby_version; end
  def mri?; end
  def non_mri?; end
  def rbx?; end
  def truffleruby?; end

  class << self
    def jruby?; end
    def jruby_9000?; end
    def jruby_version; end
    def mri?; end
    def non_mri?; end
    def rbx?; end
    def truffleruby?; end
  end
end

module RSpec::Support::RubyFeatures
  private

  def caller_locations_supported?; end
  def fork_supported?; end
  def kw_args_supported?; end
  def module_prepends_supported?; end
  def module_refinement_supported?; end
  def optional_and_splat_args_supported?; end
  def required_kw_args_supported?; end
  def ripper_supported?; end
  def supports_exception_cause?; end
  def supports_rebinding_module_methods?; end
  def supports_taint?; end

  class << self
    def caller_locations_supported?; end
    def fork_supported?; end
    def kw_args_supported?; end
    def module_prepends_supported?; end
    def module_refinement_supported?; end
    def optional_and_splat_args_supported?; end
    def required_kw_args_supported?; end
    def ripper_supported?; end
    def supports_exception_cause?; end
    def supports_rebinding_module_methods?; end
    def supports_taint?; end
  end
end

RSpec::Support::StrictSignatureVerifier = RSpec::Support::MethodSignatureVerifier
module RSpec::Support::Version; end
RSpec::Support::Version::STRING = T.let(T.unsafe(nil), String)

module RSpec::Support::Warnings
  def deprecate(deprecated, options = T.unsafe(nil)); end
  def warn_deprecation(message, options = T.unsafe(nil)); end
  def warn_with(message, options = T.unsafe(nil)); end
  def warning(text, options = T.unsafe(nil)); end
end

module RSpec::Support::WithKeywordsWhenNeeded
  private

  def class_exec(klass, *args, **_arg2, &block); end

  class << self
    def class_exec(klass, *args, **_arg2, &block); end
  end
end
