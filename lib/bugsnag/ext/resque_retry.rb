module Bugsnag::Ext
  module ResqueRetry
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def before_perform_bugsnag(*args)
        attempt = @retry_attempt
        limit = @retry_limit
        puts attempt.inspect
        Bugsnag.before_notify_callbacks << lambda { |notif|
          notif.add_tab(:retry, {
            attempt: attempt,
            limit: limit
          })
        }
      end

      def after_perform_bugsnag(*args)
        Bugsnag.before_notify_callbacks.clear
      end
    end
  end
end
