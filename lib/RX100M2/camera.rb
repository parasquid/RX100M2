require "net/http"
require "uri"
require "json"

module RX100M2
  class Camera
    def initialize(ip: "10.0.0.1", port: 10000, path: "camera")
      uri = URI.parse("http://#{ip}:#{port}/#{path}")
      @http = Net::HTTP.new(uri.host, uri.port)
      @request = Net::HTTP::Post.new(uri)
      @request["content-type"] = "application/json"
      @request["cache-control"] = "no-cache"
    end

    def get_available_api_list
      call_camera_api(payload("getAvailableApiList"), @request.dup)
    end

    def get_application_info
      call_camera_api(payload("getApplicationInfo"), @request.dup)
    end

    def get_method_types
      call_camera_api(payload("getMethodTypes", params: ["1.0"]), @request.dup)
    end

    def get_shoot_mode
      call_camera_api(payload("getShootMode"), @request.dup)
    end

    def get_supported_shoot_mode
      call_camera_api(payload("getSupportedShootMode"), @request.dup)
    end

    def get_available_shoot_mode
      call_camera_api(payload("getAvailableShootMode"), @request.dup)
    end

    def act_take_picture
      call_camera_api(payload("actTakePicture"), @request.dup)
    end

    private

    def call_camera_api(body, request)
      request.body = body
      response = @http.request(request)
      response.read_body
    end

    def payload(method, params: [], id: 1, version: "1.0")
      {
        method: method,
        params: params,
        id: id,
        version: version
      }.to_json
    end
  end
end
