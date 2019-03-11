# frozen_string_literal: true

class MeritBadgesController < OpenReadController
  before_action :set_merit_badge, only: %i[show update destroy]

  # GET /merit_badges
  def index
    @merit_badges = MeritBadge.all

    render json: @merit_badges
  end

  # GET /merit_badges/1
  def show
    render json: @merit_badge
  end

  # POST /merit_badges
  def create
    @merit_badge = current_user.merit_badges.build(merit_badge_params)

    if @merit_badge.save
      render json: @merit_badge, status: :created, location: @merit_badge
    else
      render json: @merit_badge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merit_badges/1
  def update
    if current_user.merit_badges.update(merit_badge_params)
      render json: @merit_badge
    else
      render json: @merit_badge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merit_badges/1
  def destroy
    @merit_badge.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_merit_badge
    @merit_badge = MeritBadge.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def merit_badge_params
    params.require(:merit_badge).permit(:name, :completed, :notes, :user_id)
  end
end
