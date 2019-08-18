class TestPassage < ApplicationRecord
  SUCCESS_PERCENT = 85

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', foreign_key: :current_question_id, optional: true

  before_validation :before_validation_set_current_question, on: %i[create update]

  def completed?
    current_question.nil?
  end

  def accept!(answer_ids)
    self.correct_questions += 1 if correct_answer?(answer_ids)

    save!
  end

  def successfully_completed?
    test_success >= SUCCESS_PERCENT
  end

  def test_success
    ((correct_questions / test_questions_count.to_f) * 100).to_i
  end

  def current_question_number
    test.questions.order(:id).where('id <= ?', current_question.id).count
  end

  def test_questions_count
    test.questions.count
  end

  private

  def before_validation_set_current_question
    self.current_question = if new_record?
                              test.questions.first
                            else
                              next_question
                            end
  end

  def correct_answer?(answer_ids)
    correct_answers_count = correct_answers.count

    (correct_answers_count == correct_answers.where(id: answer_ids).count) &&
      correct_answers_count == answer_ids.count
  end

  def correct_answers
    current_question.answers.correct
  end

  def next_question
    test.questions.order(:id).where('id > ?', current_question.id).first
  end
end
