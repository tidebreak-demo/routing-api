# frozen_string_literal: true

class PartnerWebhookRetryPolicy
  GIVE_UP_STATUSES = [410].freeze

  def self.retry?(status)
    !GIVE_UP_STATUSES.include?(status) && status >= 500
  end
end
