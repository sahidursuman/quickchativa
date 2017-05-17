require 'test_helper'

class Api::V1::RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_room = api_v1_rooms(:one)
  end

  test "should get index" do
    get api_v1_rooms_url, as: :json
    assert_response :success
  end

  test "should create api_v1_room" do
    assert_difference('Api::V1::Room.count') do
      post api_v1_rooms_url, params: { api_v1_room: { name: @api_v1_room.name } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_room" do
    get api_v1_room_url(@api_v1_room), as: :json
    assert_response :success
  end

  test "should update api_v1_room" do
    patch api_v1_room_url(@api_v1_room), params: { api_v1_room: { name: @api_v1_room.name } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_room" do
    assert_difference('Api::V1::Room.count', -1) do
      delete api_v1_room_url(@api_v1_room), as: :json
    end

    assert_response 204
  end
end
