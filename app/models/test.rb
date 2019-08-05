class Test < ApplicationRecord
  MAX_LEVEL = Float::INFINITY

  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :questions, dependent: :nullify
  has_many :tests_users, dependent: :nullify
  has_many :users, through: :tests_users

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :difficult, -> { where(level: 5..MAX_LEVEL) }
  scope :order_title_desc, lambda { |category|
                             joins(:category).where(categories: { title: category })
                                             .order('tests.title DESC')
                           }

  validates :title, presence: true, uniqueness: { scope: :level,
                                                  message: 'Сan be only one test with this name and level' }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.pluck_title_desc(category)
    order_title_desc(category).pluck('tests.title')
  end

  # def self.order_title_desc(category)
  #   joins(:category).where(categories: { title: category })
  #                   .order('tests.title DESC')
  #                   .pluck('tests.title')
  # end
end
