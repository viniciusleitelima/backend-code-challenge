require 'test_helper'

class PontoDistribuicaoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ponto_distribuicao_index_url
    assert_response :success
  end

  test "should get show" do
    get ponto_distribuicao_show_url
    assert_response :success
  end

  test "should get new" do
    get ponto_distribuicao_new_url
    assert_response :success
  end

  test "should get create" do
    get ponto_distribuicao_create_url
    assert_response :success
  end

end
