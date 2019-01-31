class RsvpsController < ApplicationController
  before_action :set_rsvp, only: %i[show]

  # GET /rsvps/
  def index
    @rsvps = Rsvp.all
    render json: @rsvps
  end

  # GET /guest_list
  def guest_list
    @attending = Rsvp.where(accept: 'accepts')
    render json: @attending
  end

  # GET /rsvps/:id
  def show
    render json: @rsvp
  end

  def new
    @rsvp = Rsvp.new
  end

  # POST /rsvps
  def create
    @rsvp = Rsvp.create(rsvp_params)

    if @rsvp.save
      response json: @rsvp
    end
  end

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
