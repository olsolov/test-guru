class Answer < ApplicationRecord
  MAX_ANSWERS = 4

  belongs_to :question

  scope :right, -> { where(correct: true) }

  validates :body, presence: true
  validate :validate_max_count_answers, on: :create

  private

  def validate_max_count_answers
    errors.add(:question) if question.answers.count >= MAX_ANSWERS
  end
end
