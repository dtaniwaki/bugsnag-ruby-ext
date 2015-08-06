module Bugsnag::Ext
  # Need to inject before raise_error middleware
  class Faraday < ::Faraday::Middleware
    def initialize(app)
      super
      ::Faraday::ClientError.class_eval do
        include ::Bugsnag::MetaData
      end
    end

    def call(env)
      org_env = env.dup
      begin
        response = @app.call(env)
        response
      rescue ::Faraday::ClientError => e
        e.bugsnag_meta_data = {
          faraday: {
            request: ::Bugsnag::Helpers.cleanup_obj({
              url: org_env.url,
              method: org_env.method,
              headers: org_env.request_headers,
              body: org_env.body,
            }),
            response: ::Bugsnag::Helpers.cleanup_obj({
              status: env.status,
              headers: env.response_headers,
              body: env.body,
            }),
          }
        }
        raise e
      end
    end
  end
end
