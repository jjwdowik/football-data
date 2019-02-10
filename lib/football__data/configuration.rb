module FootballData
    module Configuration
        DEFAULT_API_KEY = nil
        DEFAULT_RESPONSE_CONTROL = "full"
        DEFAULT_X_API_VERSION = 'v2'

        API_ENDPOINT = "http://api.football-data.org"

        attr_writer :api_version, :api_key, :response_control, :x_api_version

        def configure
            raise "don't you wanna configure it?" unless block_given?
            yield self
            @response_control ||= DEFAULT_RESPONSE_CONTROL
            @x_api_version ||= DEFAULT_X_API_VERSION
            @api_key ||= DEFAULT_API_KEY
        end

        def reset!
            @api_key = DEFAULT_API_KEY
            @response_control = DEFAULT_RESPONSE_CONTROL
            @x_api_version = DEFAULT_X_API_VERSION
        end
    end
end
