class TodoList < ApplicationRecord
  # Require the title and description fields
  validates :description, :title, presence: true
  # Limit the title field to minimum 3 characters
  validates :title, length: { minimum: 3}
end
