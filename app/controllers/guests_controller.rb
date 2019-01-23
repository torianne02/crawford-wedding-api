class GuestsController < ApplicationController

  private

  def set_guest
    @guest = Guest.find_by(id: params[:id])
  end

  def guest_params
    params.require(:guest).permit(
      :name,
      :email,
      rsvp_attributes: %i[attendees song_request accept]
    )
  end
end
