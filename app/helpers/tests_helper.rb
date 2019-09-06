module TestsHelper
  def test_level(test)
    case test.level
    when 0
      t('.test_levels.easy')
    when 1
      t('.test_levels.elementary')
    when 2
      t('.test_levels.advanced')
    when 3
      t('.test_levels.hard')
    else
      t('.test_levels.hero')
    end
  end

  def test_header(test)
    if test.new_record?
      t('.create_test')
    else
      t('.edit_test', test_title: test.title)
    end
  end
end
