module FootballData
    module Configuration
        DEFAULT_API_KEY = nil
        DEFAULT_API_VERSON   = "alpha"
        DEFAULT_RESPONSE_CONTROL = "full"
        DEFAULT_X_API_VERSION = 'v2.1'

        API_ENDPOINT = "http://api.football-data.org"

        attr_writer :api_version, :api_key, :response_control, :x_api_version

        def configure
            raise "don't you wanna configure it?" unless block_given?
            yield self
            @api_version ||= DEFAULT_API_VERSON
            @response_control ||= DEFAULT_RESPONSE_CONTROL
            @x_api_version = DEFAULT_X_API_VERSION
        end

        def reset!
            @api_key = DEFAULT_API_KEY
            @api_version = DEFAULT_API_VERSON
            @response_control = DEFAULT_RESPONSE_CONTROL
            @x_api_version = DEFAULT_X_API_VERSION
        end
    end
end
