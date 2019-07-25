class User < ApplicationRecord
  def user_tests_by_level(level)
    Test.joins('JOIN results ON tests.id = results.test_id')
        .where('tests.level = :level AND results.user_id = :user_id', level: level, user_id: id)
  end
end
