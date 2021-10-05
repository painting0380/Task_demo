class User < ApplicationRecord
	has_many :tasks, dependent: :destroy
	has_secure_password

	validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: I18n.t(:必須是有效的Email樣版) }
end
