#encoding: utf-8
require "test_helper"

class TagTest < ActiveSupport::TestCase
  before do
    @blank_tag = Tag.new
    make_valid
  end

  after do
    @blank_tag.destroy!
  end
  
  def make_valid
    @valid_supplier = Supplier.new(:name => 'Moe\'s Milk',
                                   :address => 'Sandgärdsgatan 6 352 30 Växjö', 
                                   :latitude => '56.87778', 
                                   :longitude => '14.80793',
                                   :phone => '0756189473',
                                   :website => 'http://www.moesmilk.com/')
  end
  
  def test_should_respond_to_name
    @blank_tag.must_respond_to :name
  end
end
