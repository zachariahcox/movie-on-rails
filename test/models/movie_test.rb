require 'test_helper'

class MovieTest < ActiveSupport::TestCase
    test "model is valid with a title" do
        title = "foo"
        m = Movie.new(title: "Parasite", director: "Bong Joon-ho")
        assert_equal m.title, title
    end
end