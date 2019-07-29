class User < ApplicationRecord
  has_many :tests
  has_many :tests_users
  has_many :tests, through: :tests_users

  def user_tests_by_level(level)
    Test.joins('JOIN results ON tests.id = results.test_id')
        .where(level: level, results: { user_id: id })
  end
end
