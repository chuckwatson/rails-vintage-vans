require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get booked:boolean" do
    get bookings_booked:boolean_url
    assert_response :success
  end

end
