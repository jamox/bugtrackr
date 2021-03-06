class Issue < ActiveRecord::Base
  attr_accessible :description, :meetoo_count, :topic
  validates :topic, length: { minimum: 1 }
  scope :current, -> { where(fixed: false) }
end
