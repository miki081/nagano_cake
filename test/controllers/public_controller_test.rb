require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get /items" do
    get public_/items_url
    assert_response :success
  end

end
