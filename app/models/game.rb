class Game < ActiveRecord::Base
  belongs_to :challenged, class_name: "User"
  belongs_to :challenger, class_name: "User"

  delegate :name, to: :challenger, prefix: true
  delegate :name, to: :challenged, prefix: true

  validates :challenger, presence: true
  validates :challenged, presence: true
  validates :challenger_points, presence: true
  validates :challenged_points, presence: true
end
