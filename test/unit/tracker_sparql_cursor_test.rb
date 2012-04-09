require File.expand_path('../test_helper.rb', File.dirname(__FILE__))

describe Tracker::SparqlCursor do
  describe "#get_string" do
    before do
      conn = Tracker::SparqlConnection.get_direct nil
      @cursor = conn.query "SELECT ?url WHERE { ?x a nie:InformationElement; nie:url ?url. }", nil

      @cursor.next nil
    end

    it "returns just the string value" do
      assert_instance_of String, @cursor.get_string(0)
    end

    it "can safely be called twice" do
      @cursor.get_string(0)
      assert_instance_of String, @cursor.get_string(0)
    end
  end
end
