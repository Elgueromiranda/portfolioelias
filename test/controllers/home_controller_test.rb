require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

  test "should get porfolio" do
    get home_porfolio_url
    assert_response :success
  end

  test "should get challenges" do
    get home_challenges_url
    assert_response :success
  end
end
