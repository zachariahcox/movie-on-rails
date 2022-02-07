require "application_system_test_case"

class MoviesSystemTest < ApplicationSystemTestCase
  test "visiting the show" do
    visit("movies/1")
    assert_text("Parasite")
    assert_text "Bong Joon-ho"


    # get "/movies/1"
    # assert_response :success
    # assert_selector "title", text:"Parasite"
  end
end