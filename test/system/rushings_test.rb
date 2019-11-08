require "application_system_test_case"

class RushingsTest < ApplicationSystemTestCase
  setup do
    @rushing = rushings(:one)
  end

  test "visiting the index" do
    visit rushings_url
    assert_selector "h1", text: "Rushing"
  end
end
