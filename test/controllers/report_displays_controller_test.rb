require 'test_helper'

class ReportDisplaysControllerTest < ActionController::TestCase
  setup do
    @report_display = report_displays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_displays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_display" do
    assert_difference('ReportDisplay.count') do
      post :create, report_display: {  }
    end

    assert_redirected_to report_display_path(assigns(:report_display))
  end

  test "should show report_display" do
    get :show, id: @report_display
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_display
    assert_response :success
  end

  test "should update report_display" do
    patch :update, id: @report_display, report_display: {  }
    assert_redirected_to report_display_path(assigns(:report_display))
  end

  test "should destroy report_display" do
    assert_difference('ReportDisplay.count', -1) do
      delete :destroy, id: @report_display
    end

    assert_redirected_to report_displays_path
  end
end
