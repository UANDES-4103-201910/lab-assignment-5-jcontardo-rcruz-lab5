require 'test_helper'

class EventVenueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_venue_index_url
    assert_response :success
  end

end
