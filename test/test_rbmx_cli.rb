require File.join(File.dirname(__FILE__), "test_helper.rb")
require 'rbmx/cli'

class TestRbmxCli < Test::Unit::TestCase
  def setup
    @stdout_io = StringIO.new
    Rbmx::CLI.execute(@stdout_io, [])
    @stdout_io.rewind
    @stdout = @stdout_io.read
  end
  
  def test_not_print_default_output
    assert_no_match(/To update this executable/, @stdout)
  end
end