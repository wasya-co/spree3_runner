
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
