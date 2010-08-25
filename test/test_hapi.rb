require "test/test_helper"
require "hapi"

class TestHapi < MiniTest::Unit::TestCase

  def test_set_uri
    assert_nil Hapi.uri

    uri      = 'http://url/to/hudson'
    Hapi.uri = uri

    assert_equal Hapi.uri, URI.parse(uri)
  end

end
