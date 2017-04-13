require 'test_helper'

class BandControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get band_top_url
    assert_response :success
  end

end
