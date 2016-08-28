# run using `bundle exec ruby timelapse.rb`
require "RX100M2/camera"

while(true) do
  camera = RX100M2::Camera.new
  puts camera.get_available_shoot_mode
  sleep 5
end