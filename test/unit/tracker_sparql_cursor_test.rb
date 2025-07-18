# frozen_string_literal: true

require File.expand_path("../test_helper.rb", File.dirname(__FILE__))

describe Tracker::SparqlCursor do
  describe "#get_string" do
    before do
      conn = if Tracker::SparqlConnection.respond_to? :bus_new
               Tracker::SparqlConnection.bus_new("org.freedesktop.Tracker3.Miner.Files")
             else
               Tracker::SparqlConnection.get
             end
      @cursor = conn.query "SELECT 'Foo' { }", nil

      @cursor.next nil
    end

    it "returns just the string value" do
      _(@cursor.get_string(0)).must_equal "Foo"
    end

    it "can safely be called twice" do
      @cursor.get_string(0)

      _(@cursor.get_string(0)).must_equal "Foo"
    end
  end
end
