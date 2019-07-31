class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :questions, dependent: :nullify
  has_many :tests_users, dependent: :nullify
  has_many :users, through: :tests_users

  def self.order_title_desc(category)
    joins(:category).where(categories: { title: category })
                    .order('tests.title DESC')
                    .pluck('tests.title')
  end
end
