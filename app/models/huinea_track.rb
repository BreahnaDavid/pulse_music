class HuineaTrack < ActiveRecord::Base
  def self.default_scope
    where.not(preview_url: nil)
  end
end
