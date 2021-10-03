class Task < ApplicationRecord
	validates_presence_of :title, :content
	scope :order_by_created_at, ->{ order(created_at: :asc) }
end
