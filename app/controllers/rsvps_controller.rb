class RsvpsController < ApplicationController
  before_action :set_rsvp, only: %i[show]

  private

  def set_rsvp
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def rsvp_params
    params.require(:rsvp).permit(
      :name,
      :email,
      :attendees,
      :song_request,
      :accept
    )
  end
end
