require "test_helper"

class GerenciamentControllerTest < ActionDispatch::IntegrationTest
  test "should get gerenciamento" do
    get gerenciament_gerenciamento_url
    assert_response :success
  end
end
