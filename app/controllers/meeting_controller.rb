class MeetingController < ApplicationController
  def show
    @meeting_list = Meeting.all
    @meeting_maxdate_group = Meeting.group(:room_floor,:room_name).select("room_floor,room_name,MAX(datetime) as datetime")

    @room_list = []
    @meeting_maxdate_group.each do |room|
      meeting = Meeting.new
      meeting.room_floor = room.room_floor
      meeting.room_name = room.room_name
      meeting1 = @meeting_list.where(room_floor: room.room_floor,room_name: room.room_name,datetime: room.datetime)
      meeting1.each do |t1|
        meeting.flag = t1.flag
        meeting.datetime = t1.datetime
      end
      @room_list.push meeting
    end
  end
end
