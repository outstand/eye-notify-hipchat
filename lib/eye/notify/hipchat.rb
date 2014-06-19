require 'eye'
require 'eye/notify/hipchat/version'
require 'hipchat'

module Eye
  class Notify
    class Hipchat < Eye::Notify::Custom

      # require 'eye/notify/hipchat'
      # Eye.config do
      #   hipchat api_token: 'asdf', name: 'Eye', notify: true, color: 'red'
      #   contact :ops, :hipchat, 'ops-room'
      # end

      param :api_token, String, true  # Required
      param :name, String, false, 'Eye'  # Not required, defaults to 'Eye'
      param :notify, [TrueClass, FalseClass], false, true  # Not required, defaults to true
      param :color, String, false, 'yellow', ['yellow', 'green', 'red', 'purple', 'gray', 'random']

      def execute
        debug "send hipchat - #{[contact, message_body]}"
        room_name = contact

        client = HipChat::Client.new(api_token, :api_version => 'v2')
        client[room_name].send(name, message_body, notify: notify, color: color)
      end
    end
  end
end
