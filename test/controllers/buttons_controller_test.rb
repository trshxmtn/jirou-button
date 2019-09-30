require 'test_helper'

class ButtonsControllerTest < ActionDispatch::IntegrationTest
  test "should get share" do
    get buttons_share_url
    assert_response :success
  end

end
