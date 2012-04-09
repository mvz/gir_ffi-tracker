require 'gir_ffi'

GirFFI.setup :Tracker

module Tracker
  load_class :SparqlCursor

  class SparqlCursor
    _setup_instance_method "get_string"

    def get_string_with_hidden_length column
      result, _ = *get_string_without_hidden_length(column)
      result
    end

    alias get_string_without_hidden_length get_string
    alias get_string get_string_with_hidden_length
  end
end
