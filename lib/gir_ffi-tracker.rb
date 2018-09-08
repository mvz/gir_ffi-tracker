require 'gir_ffi'

GirFFI.setup :Tracker

Tracker.load_class :SparqlCursor

module Tracker
  # Overrides for Tracker::SparqlCursor
  class SparqlCursor
    setup_instance_method! 'get_string'

    def get_string_with_hidden_length(column)
      result, = *get_string_without_hidden_length(column)
      result
    end

    alias get_string_without_hidden_length get_string
    alias get_string get_string_with_hidden_length
  end
end
