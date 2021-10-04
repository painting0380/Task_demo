class Task < ApplicationRecord
	validates_presence_of :title, :content
	scope :order_by_created_at, ->{ order(created_at: :asc) }
	scope :order_by_end_time, ->{ order(end_time: :asc) }
	scope :search_status_type, ->(p) { where("status_type LIKE ?", p) }
	scope :search_title_or_content, ->(p) { where('title LIKE ? OR content LIKE ?', p, p) }
end
