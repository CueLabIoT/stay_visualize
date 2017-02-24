class MeetingController < ApplicationController
  def show
    @latest_room_status = Meeting.select("room_floor,room_name,flag,used_time,MAX(datetime) as datetime");
  end
end
