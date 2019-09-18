class Question < ApplicationRecord
  belongs_to :test
  has_many :answers, dependent: :nullify
  has_many :gists, dependent: :nullify

  validates :body, presence: true
end
