require 'test_helper'

class OrgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @org = orgs(:one)
  end

  test "should get index" do
    get orgs_url
    assert_response :success
  end

  test "should create org" do
    assert_difference('Org.count') do
      post orgs_url, params: { org: { address: @org.address, description: @org.description, title: @org.title } }
    end

    assert_response 201
  end

  test "should show org" do
    get org_url(@org)
    assert_response :success
  end

  test "should update org" do
    patch org_url(@org), params: { org: { address: @org.address, description: @org.description, title: @org.title } }
    assert_response 200
  end

  test "should destroy org" do
    assert_difference('Org.count', -1) do
      delete org_url(@org)
    end

    assert_response 204
  end
end
