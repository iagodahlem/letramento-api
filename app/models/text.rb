class Text < ApplicationRecord
  validates :title, :description, :body, :data, presence: :true
end
