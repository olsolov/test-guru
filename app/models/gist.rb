class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :gist_url, presence: true

  def gist_hash
    gist_url.split('/')[-1]
  end
end
