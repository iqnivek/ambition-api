class GoalCompletionsController < ApplicationController
  before_action :set_goal_completion, only: [:show, :update, :destroy]

  # GET /goal_completions
  def index
    raise "Requires date param" if params[:date].blank?
    date = Date.parse(params[:date])
    @goal_completions = GoalCompletion.where(time: date.beginning_of_day..date.end_of_day)

    render json: @goal_completions
  end

  # GET /goal_completions/1
  def show
    render json: @goal_completion
  end

  # POST /goal_completions
  def create
    # TODO only allow user's goals to be edited
    @goal_completion = GoalCompletion.new(goal_completion_params)

    if @goal_completion.save
      render json: @goal_completion, status: :created, location: @goal_completion
    else
      render json: @goal_completion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goal_completions/1
  def update
    # TODO only allow user's goals to be edited
    if @goal_completion.update(goal_completion_params)
      render json: @goal_completion
    else
      render json: @goal_completion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goal_completions/1
  def destroy
    @goal_completion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_completion
      @goal_completion = GoalCompletion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_completion_params
      params.require(:goal_completion).permit(
        :complete,
        :goal_id,
        :time,
      )
    end
end
