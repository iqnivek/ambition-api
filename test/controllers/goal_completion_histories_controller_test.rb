require 'test_helper'

class GoalCompletionHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_completion_history = goal_completion_histories(:one)
  end

  test "should get index" do
    get goal_completion_histories_url, as: :json
    assert_response :success
  end

  test "should create goal_completion_history" do
    assert_difference('GoalCompletionHistory.count') do
      post goal_completion_histories_url, params: { goal_completion_history: { completed_score: @goal_completion_history.completed_score, date: @goal_completion_history.date, target_score: @goal_completion_history.target_score } }, as: :json
    end

    assert_response 201
  end

  test "should show goal_completion_history" do
    get goal_completion_history_url(@goal_completion_history), as: :json
    assert_response :success
  end

  test "should update goal_completion_history" do
    patch goal_completion_history_url(@goal_completion_history), params: { goal_completion_history: { completed_score: @goal_completion_history.completed_score, date: @goal_completion_history.date, target_score: @goal_completion_history.target_score } }, as: :json
    assert_response 200
  end

  test "should destroy goal_completion_history" do
    assert_difference('GoalCompletionHistory.count', -1) do
      delete goal_completion_history_url(@goal_completion_history), as: :json
    end

    assert_response 204
  end
end
