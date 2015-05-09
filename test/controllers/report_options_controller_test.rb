require 'test_helper'

class ReportOptionsControllerTest < ActionController::TestCase
  setup do
    @report_option = report_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_option" do
    assert_difference('ReportOption.count') do
      post :create, report_option: {  }
    end

    assert_redirected_to report_option_path(assigns(:report_option))
  end

  test "should show report_option" do
    get :show, id: @report_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_option
    assert_response :success
  end

  test "should update report_option" do
    patch :update, id: @report_option, report_option: {  }
    assert_redirected_to report_option_path(assigns(:report_option))
  end

  test "should destroy report_option" do
    assert_difference('ReportOption.count', -1) do
      delete :destroy, id: @report_option
    end

    assert_redirected_to report_options_path
  end
end
