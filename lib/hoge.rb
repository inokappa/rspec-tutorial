require "net_http_unix"

class Client
  def initialize(uri)
    @uri = uri
  end

  def client
    NetX::HTTPUnix.new(@uri)
  end

  def list_containers
    req = Net::HTTP::Get.new("/1.0/containers")
    resp = client.request(req)
    return resp.body
  end
end
