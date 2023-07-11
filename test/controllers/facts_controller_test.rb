require "test_helper"

class FactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/facts.json"
    assert_response :success
  end

  test "should get random" do
    get "/facts/random.json"
    assert_response :success
  end
end
