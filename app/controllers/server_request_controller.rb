class ServerRequestController < ApplicationController
	skip_before_filter :verify_authenticity_token 
  def server_post
	json_request = JSON.parse(request.body.read)
	
 	# パース後のデータを表示
	#  p "json_request => #{json_request}"
	#  p "#{json_request.to_hash}"
	# 各要素へのアクセス方法
	#  p "glossary => #{json_request["glossary"]}"
	#  p "glossary.title => #{json_request["glossary"]["title"]}"
	#
	if !json_request.blank? then
	  #meetingだったら、会議室システム
	  if json_request["type"] == "meeting" then
	   new_motion = Motion.new
           new_motion.hostid = json_request["id"]
           new_motion.flag = json_request["flag"]
           new_motion.switchtime = json_request["exedate"]
           new_motion.save
	   render nothing: true
	  #toiretだったら、HEAVN'S DOOR
	  elsif json_request["type"] == "toiret" then
	   new_toiret = Toiret.new
	   new_toiret.toiret_floor = json_request["toiret_floor"]
	   new_toiret.toiret_num = json_request["toiret_num"]
	   new_toiret.distance = json_request["distance"]
	   new_toiret.flag = json_request["flag"]
	   new_toiret.datetime = json_request["datetime"]
	   new_toiret.save
	   render nothing: true
	  else
	   personal = {'status' => 500}
	  end 
	else
      	      personal = {'status' => 500}
    	end
  end
end
