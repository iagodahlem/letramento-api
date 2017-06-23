class Text < ApplicationRecord
  belongs_to :user

  validates :title, :description, :body, :data, presence: :true
end
