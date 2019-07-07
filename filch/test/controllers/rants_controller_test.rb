require 'test_helper'

class RantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rant = rants(:one)
  end

  test "should get index" do
    get rants_url
    assert_response :success
  end

  test "should get new" do
    get new_rant_url
    assert_response :success
  end

  test "should create rant" do
    assert_difference('Rant.count') do
      post rants_url, params: { rant: { description: @rant.description, geofence_id: @rant.geofence_id, inapropiate: @rant.inapropiate, like: @rant.like, status: @rant.status, title: @rant.title, unlike: @rant.unlike, user_id: @rant.user_id, visibility: @rant.visibility } }
    end

    assert_redirected_to rant_url(Rant.last)
  end

  test "should show rant" do
    get rant_url(@rant)
    assert_response :success
  end

  test "should get edit" do
    get edit_rant_url(@rant)
    assert_response :success
  end

  test "should update rant" do
    patch rant_url(@rant), params: { rant: { description: @rant.description, geofence_id: @rant.geofence_id, inapropiate: @rant.inapropiate, like: @rant.like, status: @rant.status, title: @rant.title, unlike: @rant.unlike, user_id: @rant.user_id, visibility: @rant.visibility } }
    assert_redirected_to rant_url(@rant)
  end

  test "should destroy rant" do
    assert_difference('Rant.count', -1) do
      delete rant_url(@rant)
    end

    assert_redirected_to rants_url
  end
end
