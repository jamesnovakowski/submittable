require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_submission_url
    assert_response :success
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { age: @submission.age, city: @submission.city, first_name: @submission.first_name, gender: @submission.gender, last_name: @submission.last_name, p_age_minor: @submission.p_age_minor, p_city: @submission.p_city, p_gender_of_minor: @submission.p_gender_of_minor, p_name_minor: @submission.p_name_minor, p_name_parent: @submission.p_name_parent, p_permission: @submission.p_permission, p_permission_type: @submission.p_permission_type, p_state: @submission.p_state, permission: @submission.permission, permission_type: @submission.permission_type, state: @submission.state, submission_type: @submission.submission_type, theme: @submission.theme, title: @submission.title } }
    end

    assert_redirected_to submission_url(Submission.last)
  end

  test "should show submission" do
    get submission_url(@submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_submission_url(@submission)
    assert_response :success
  end

  test "should update submission" do
    patch submission_url(@submission), params: { submission: { age: @submission.age, city: @submission.city, first_name: @submission.first_name, gender: @submission.gender, last_name: @submission.last_name, p_age_minor: @submission.p_age_minor, p_city: @submission.p_city, p_gender_of_minor: @submission.p_gender_of_minor, p_name_minor: @submission.p_name_minor, p_name_parent: @submission.p_name_parent, p_permission: @submission.p_permission, p_permission_type: @submission.p_permission_type, p_state: @submission.p_state, permission: @submission.permission, permission_type: @submission.permission_type, state: @submission.state, submission_type: @submission.submission_type, theme: @submission.theme, title: @submission.title } }
    assert_redirected_to submission_url(@submission)
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete submission_url(@submission)
    end

    assert_redirected_to submissions_url
  end
end
