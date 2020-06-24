require 'test_helper'

class MerchantDashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get dashbaord" do
    get merchant_dashboards_dashbaord_url
    assert_response :success
  end

end
