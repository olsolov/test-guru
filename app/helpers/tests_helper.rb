module TestsHelper
  TEST_LEVELS = { 0 => :easy, 1 => :elementary, 2 => :advanced, 3 => :hard }.freeze

  def test_level(test)
    t(TEST_LEVELS.fetch(test.level, :hero))
  end

  def test_header(test)
    if test.new_record?
      t('.create_test')
    else
      t('.edit_test', test_title: test.title)
    end
  end
end
