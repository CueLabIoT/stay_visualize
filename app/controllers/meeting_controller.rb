class MeetingController < ApplicationController
  def show
    @latest_room_status = Meeting.group(:room_floor,:room_name).select("room_floor,room_name,flag,used_time,MAX(datetime) as datetime");
  end
end
