module VehicleModule
  class ReportContent < ApplicationRecord
    enum reason: {
      "it's_spam" => 1,
      "nudity_or_sexual_activity"=> 2,
      "hate_speech_or_symbols"=> 3,
      "violence_or_dangerous_organizations" => 4,
      "false_information"=> 5,
      "scam_or_fraud" => 6,
      "suicide_or_self_injury" => 7,
      "bullying_or_harassment"=> 8,
      "intellectual_property_violation" => 9,
      "something_else" => 10
    }

    attr_accessor :custom_reason

    before_validation :set_custom_reason_if_something_else

    private

    def set_custom_reason_if_something_else
      if self.reason == 'something_else' && custom_reason.present?
        self.other_reason = custom_reason
      end
    end
  end
end


