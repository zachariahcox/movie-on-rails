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

    test "all" do
        Movie.create!(title:"boo")
        Movie.create!(title:"foo")
        titles = Movie.titles
        assert_includes titles, "boo"
        assert_includes titles, "foo"
        # assert_includes titles, "nope"
    end
end