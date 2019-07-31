class User < ApplicationRecord
  has_many :created_tests, class_name: 'Test', foreign_key: 'author_id', dependent: :nullify
  has_many :tests_users, dependent: :nullify
  has_many :tests, through: :tests_users

  def user_tests_by_level(level)
    tests.where(level: level)
  end
end
