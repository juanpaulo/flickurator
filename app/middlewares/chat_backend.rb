require 'faye/websocket'

module ChatDemo
  class ChatBackend
    KEEPALIVE_TIME = 15 # in seconds

    def initialize(app)
      @app     = app
      @clients = []
    end

    def call(env)
      if Faye::WebSocket.websocket?(env)
        # WebSockets logic goes here

        # Return async Rack response
        ws.rack_response
      else
        @app.call(env)
      end
    end
  end
end