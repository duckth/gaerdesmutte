require "test_helper"

class FactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
<<<<<<< HEAD
    get "/facts.json"
    assert_response :success
  end

  test "should get random" do
    get "/facts/random.json"
=======
    get facts_index_url
    assert_response :success
  end

  test "should get show" do
    get facts_show_url
>>>>>>> 1e9c430 (Re-initialize app)
    assert_response :success
  end
end
