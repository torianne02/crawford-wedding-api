class GuestsController < ApplicationController
  before_action :set_guest, only: %i[show]

  # GET /guests/
  def index
    @guests = Guest.all
    render json: @guests
  end

  # GET /guests/:id
  def show
    @guest_rsvp = @guest.rsvp
    response = { :guest => @guest, :guest_rsvp => @guest_rsvp }
    render json: response
  end

  def new
    @guest = Guest.new
    @rsvp = Rsvp.new
  end

  # POST /guests
  def create
    @guest = Guest.find_or_create_by(guest_params)
    @rsvp = Rsvp.create(guest_params[:rsvp_attributes])
    @rsvp.guest_id = @guest.id

    if @guest.save
      response json: @guest
    end
  end

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
