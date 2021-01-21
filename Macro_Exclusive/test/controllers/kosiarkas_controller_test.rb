require "test_helper"

class KosiarkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kosiarka = kosiarkas(:one)
  end

  test "should get index" do
    get kosiarkas_url
    assert_response :success
  end

  test "should get new" do
    get new_kosiarka_url
    assert_response :success
  end

  test "should create kosiarka" do
    assert_difference('Kosiarka.count') do
      post kosiarkas_url, params: { kosiarka: {  } }
    end

    assert_redirected_to kosiarka_url(Kosiarka.last)
  end

  test "should show kosiarka" do
    get kosiarka_url(@kosiarka)
    assert_response :success
  end

  test "should get edit" do
    get edit_kosiarka_url(@kosiarka)
    assert_response :success
  end

  test "should update kosiarka" do
    patch kosiarka_url(@kosiarka), params: { kosiarka: {  } }
    assert_redirected_to kosiarka_url(@kosiarka)
  end

  test "should destroy kosiarka" do
    assert_difference('Kosiarka.count', -1) do
      delete kosiarka_url(@kosiarka)
    end

    assert_redirected_to kosiarkas_url
  end
end
