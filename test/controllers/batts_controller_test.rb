require 'test_helper'

class BattsControllerTest < ActionController::TestCase
  setup do
    @batt = batts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batt" do
    assert_difference('Batt.count') do
      post :create, batt: { 2B: @batt.2B, 3B: @batt.3B, AB: @batt.AB, CS: @batt.CS, G: @batt.G, H: @batt.H, HR: @batt.HR, R: @batt.R, RBI: @batt.RBI, SB: @batt.SB, league: @batt.league, playerID: @batt.playerID, teamID: @batt.teamID, yearID: @batt.yearID }
    end

    assert_redirected_to batt_path(assigns(:batt))
  end

  test "should show batt" do
    get :show, id: @batt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batt
    assert_response :success
  end

  test "should update batt" do
    patch :update, id: @batt, batt: { 2B: @batt.2B, 3B: @batt.3B, AB: @batt.AB, CS: @batt.CS, G: @batt.G, H: @batt.H, HR: @batt.HR, R: @batt.R, RBI: @batt.RBI, SB: @batt.SB, league: @batt.league, playerID: @batt.playerID, teamID: @batt.teamID, yearID: @batt.yearID }
    assert_redirected_to batt_path(assigns(:batt))
  end

  test "should destroy batt" do
    assert_difference('Batt.count', -1) do
      delete :destroy, id: @batt
    end

    assert_redirected_to batts_path
  end
end
