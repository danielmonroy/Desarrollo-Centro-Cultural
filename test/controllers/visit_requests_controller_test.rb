require 'test_helper'

class VisitRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visit_request = visit_requests(:one)
  end

  test "should get index" do
    get visit_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_visit_request_url
    assert_response :success
  end

  test "should create visit_request" do
    assert_difference('VisitRequest.count') do
      post visit_requests_url, params: { visit_request: { approved: @visit_request.approved, scheduled: @visit_request.scheduled, visit_type: @visit_request.visit_type, visitor_email: @visit_request.visitor_email, visitor_name: @visit_request.visitor_name } }
    end

    assert_redirected_to visit_request_url(VisitRequest.last)
  end

  test "should show visit_request" do
    get visit_request_url(@visit_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_visit_request_url(@visit_request)
    assert_response :success
  end

  test "should update visit_request" do
    patch visit_request_url(@visit_request), params: { visit_request: { approved: @visit_request.approved, scheduled: @visit_request.scheduled, visit_type: @visit_request.visit_type, visitor_email: @visit_request.visitor_email, visitor_name: @visit_request.visitor_name } }
    assert_redirected_to visit_request_url(@visit_request)
  end

  test "should destroy visit_request" do
    assert_difference('VisitRequest.count', -1) do
      delete visit_request_url(@visit_request)
    end

    assert_redirected_to visit_requests_url
  end
end
