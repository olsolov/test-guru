class Test < ApplicationRecord
  def self.order_title_desc(category)
    joins('JOIN categories ON tests.category_id = categories.id')
      .where(categories: { title: category })
      .order('tests.title DESC').pluck('tests.title')
  end
end
