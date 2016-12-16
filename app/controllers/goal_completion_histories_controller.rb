class GoalCompletionHistoriesController < ApplicationController
  before_action :set_goal_completion_history, only: [:show, :update, :destroy]

  # GET /goal_completion_histories
  def index
    @goal_completion_histories = User.first.goal_completion_histories  # TODO

    render json: @goal_completion_histories
  end

  # GET /goal_completion_histories/1
  def show
    render json: @goal_completion_history
  end

  # POST /goal_completion_histories
  def create
    @goal_completion_history = GoalCompletionHistory.new(goal_completion_history_params)

    if @goal_completion_history.save
      render json: @goal_completion_history, status: :created, location: @goal_completion_history
    else
      render json: @goal_completion_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goal_completion_histories/1
  def update
    if @goal_completion_history.update(goal_completion_history_params)
      render json: @goal_completion_history
    else
      render json: @goal_completion_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goal_completion_histories/1
  def destroy
    @goal_completion_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_completion_history
      @goal_completion_history = GoalCompletionHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_completion_history_params
      params.require(:goal_completion_history).permit(:target_score, :completed_score, :date)
    end
end
