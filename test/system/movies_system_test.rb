require "application_system_test_case"

class MoviesSystemTest < ApplicationSystemTestCase
  test "visit movies / 1" do
    visit movie_path(1)
    assert_text "Parasite"
    assert_text "Bong Joon-ho"
  end
end