require "test_helper"

class VcmksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vcmk = vcmks(:one)
  end

  test "should get index" do
    get vcmks_url
    assert_response :success
  end

  test "should get new" do
    get new_vcmk_url
    assert_response :success
  end

  test "should create vcmk" do
    assert_difference('Vcmk.count') do
      post vcmks_url, params: { vcmk: { email: @vcmk.email, first_name: @vcmk.first_name, last_name: @vcmk.last_name, phone: @vcmk.phone, twitter: @vcmk.twitter } }
    end

    assert_redirected_to vcmk_url(Vcmk.last)
  end

  test "should show vcmk" do
    get vcmk_url(@vcmk)
    assert_response :success
  end

  test "should get edit" do
    get edit_vcmk_url(@vcmk)
    assert_response :success
  end

  test "should update vcmk" do
    patch vcmk_url(@vcmk), params: { vcmk: { email: @vcmk.email, first_name: @vcmk.first_name, last_name: @vcmk.last_name, phone: @vcmk.phone, twitter: @vcmk.twitter } }
    assert_redirected_to vcmk_url(@vcmk)
  end

  test "should destroy vcmk" do
    assert_difference('Vcmk.count', -1) do
      delete vcmk_url(@vcmk)
    end

    assert_redirected_to vcmks_url
  end
end
