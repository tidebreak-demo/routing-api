# frozen_string_literal: true

class CrewCertificationSummary
  def self.call(crew)
    Array(crew.certifications).map(&:name)
  end
end
