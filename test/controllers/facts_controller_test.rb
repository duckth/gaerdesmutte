require 'test_helper'

class FactsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get facts_index_url
    assert_response :success
  end

  test 'should get show' do
    get facts_show_url
    assert_response :success
  end
end
