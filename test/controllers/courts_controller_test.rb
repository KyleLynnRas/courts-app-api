require "test_helper"

class CourtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @court = courts(:one)
  end

  test "should get index" do
    get courts_url, as: :json
    assert_response :success
  end

  test "should create court" do
    assert_difference('Court.count') do
      post courts_url, params: { court: { bathrooms: @court.bathrooms, fee: @court.fee, indoor: @court.indoor, latitude: @court.latitude, levelplay: @court.levelplay, longitude: @court.longitude, notes: @court.notes, public: @court.public, stars: @court.stars, title: @court.title } }, as: :json
    end

    assert_response 201
  end

  test "should show court" do
    get court_url(@court), as: :json
    assert_response :success
  end

  test "should update court" do
    patch court_url(@court), params: { court: { bathrooms: @court.bathrooms, fee: @court.fee, indoor: @court.indoor, latitude: @court.latitude, levelplay: @court.levelplay, longitude: @court.longitude, notes: @court.notes, public: @court.public, stars: @court.stars, title: @court.title } }, as: :json
    assert_response 200
  end

  test "should destroy court" do
    assert_difference('Court.count', -1) do
      delete court_url(@court), as: :json
    end

    assert_response 204
  end
end
