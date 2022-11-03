
## From: https://github.com/rails/rails/issues/45590

module Psych
  module_function

  class << self
    alias original_safe_load safe_load
  end

  def safe_load(yaml,
                whitelist_classes = [],
                whitelist_symbols = [],
                arg_aliases = false,
                filename = nil,
                symbolize_names: false,
                permitted_classes: whitelist_classes,
                aliases: false)
    original_safe_load(
      yaml, permitted_classes, whitelist_symbols, aliases || arg_aliases, filename,
      symbolize_names: symbolize_names,
    )
  end
end


module YAML
  def self.properly_load_file(path)
    YAML.load_file path, aliases: true
  rescue ArgumentError
    YAML.load_file path
  end
end
module YAML
  class << self
    alias_method :load, :unsafe_load if YAML.respond_to? :unsafe_load
  end
end