class LikesController < ApplicationController
  before_action :require_signin
  before_action :set_event
  def create
    @event.likes.create!(user: current_user)
    redirect_to @event, notice: "Liked #{@event.name}!"
  end

  def destroy
    like = current_user.likes.find(params[:id])
    like.destroy

    redirect_to @event, notice: "Unliked #{@event.name}!"
  end
private

  def set_event
      @event = Event.find_by!(slug: params[:id])
  end
end
