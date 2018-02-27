class MeetingsController < ApplicationController
  before_action :authorize_meeting_view, only: :edit


  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def new
    @meeting = current_user.meetings.new
  end

  def create
    @meeting = current_user.meetings.new meetings_params
    @meeting.save
    redirect_to meeting_path @meeting.id
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])
    if @meeting.update(meetings_params)
      redirect_to meeting_path
    else
      redirect_to meeting_path(@meeting.id)
    end 
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to "/"
  end

  def authorize_meeting_view
    @meeting = Meeting.find(params[:id])
    if @meeting.user_id != current_user.id
      redirect_to meetings_path
    end
  end 

  private
  def meetings_params
    return params.require(:meeting).permit(:name, :address)
  end

end
