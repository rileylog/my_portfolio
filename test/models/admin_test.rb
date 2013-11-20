require "test_helper"

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new
  end

  def test_valid
    assert @admin.valid?
  end

end
