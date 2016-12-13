require 'test_helper'

class GoalCompletionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_completion = goal_completions(:one)
  end

  test "should get index" do
    get goal_completions_url, as: :json
    assert_response :success
  end

  test "should create goal_completion" do
    assert_difference('GoalCompletion.count') do
      post goal_completions_url, params: { goal_completion: { goal_id: @goal_completion.goal_id } }, as: :json
    end

    assert_response 201
  end

  test "should show goal_completion" do
    get goal_completion_url(@goal_completion), as: :json
    assert_response :success
  end

  test "should update goal_completion" do
    patch goal_completion_url(@goal_completion), params: { goal_completion: { goal_id: @goal_completion.goal_id } }, as: :json
    assert_response 200
  end

  test "should destroy goal_completion" do
    assert_difference('GoalCompletion.count', -1) do
      delete goal_completion_url(@goal_completion), as: :json
    end

    assert_response 204
  end
end
