class Blog < ActiveRecord::Base
  default_scope { order(created_at: :desc) }
  belongs_to :user

  validates :title, presence: true
  validates_length_of :description, :minimum => 50, :allow_blank => false
end
