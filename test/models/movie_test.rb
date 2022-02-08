require 'test_helper'

class MovieTest < ActiveSupport::TestCase
    test "model is valid with a title" do
        title = "Parasite"
        director = "Bong Joon-ho"
        m = Movie.new(title: title, director: director)

        assert_equal m.title, title
        assert_equal m.director, director
    end

    test "empty is not a valid title" do
        refute Movie.new(title: "").valid?
        refute Movie.new(title: nil).valid?
    end
end