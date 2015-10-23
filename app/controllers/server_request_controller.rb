class ServerRequestController < ApplicationController
  def server_post
    if
      params[:reading].present? && !params[:reading].nil?
      readings = params[:reading]
      readings = readings.split(",")

      readings.each { |e|
        axis = e.split(" ").map{|t| t.to_f}
        new_motion = Motion.new
        new_motion.hostid = axis[0]
        new_motion.flag = axis[1]
        new_motion.switchtime = axis[2]
        new_motion.save
        }
        end

render nothing: true
end
end
