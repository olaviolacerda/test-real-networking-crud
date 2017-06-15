require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pessoas_index_url
    assert_response :success
  end

end
