require 'test_helper'

class TravelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get travel_index_url
    assert_response :success
  end

end
