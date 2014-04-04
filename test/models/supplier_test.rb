#encoding: utf-8
require 'test_helper'

class SupplierTest < ActiveSupport::TestCase

  before do
    @blank_supplier = Supplier.new
    make_valid
  end

  after do
    @blank_supplier.destroy!
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
    @blank_supplier.must_respond_to :name
  end
  
  def test_should_respond_to_address
    @blank_supplier.must_respond_to :address
  end
  
  def test_should_respond_to_latitude
    @blank_supplier.must_respond_to :latitude
  end
  
  def test_should_respond_to_longitude
    @blank_supplier.must_respond_to :longitude
  end
  
  def test_should_respond_to_phone
    @blank_supplier.must_respond_to :phone
  end
  
  def test_should_respond_to_website
    @blank_supplier.must_respond_to :website
  end
  
  def test_blank_supplier_should_be_invalid
    assert_equal @blank_supplier.valid?, false
  end
  
  def test_too_long_name_should_be_invalid
    @valid_supplier.name = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' +
    'Aenean commodo ligula eget dolor. Aenean mal' 
    assert_equal @valid_supplier.valid?, false
    make_valid
  end
  
  def test_too_long_address_should_be_invalid
    @valid_supplier.address = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' +
    'Aenean commodo ligula eget dolor. Aenean mal' 
    assert_equal @valid_supplier.valid?, false
    make_valid
  end
  
  def test_too_long_phone_should_be_invalid
    @valid_supplier.phone = '1234567890123456'
    assert_equal @valid_supplier.valid?, false
    make_valid
  end
  
  def test_too_long_website_should_be_invalid
    @valid_supplier.website = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.' +
    'Aenean commodo ligula eget dolor. Aenean mal' 
    assert_equal @valid_supplier.valid?, false
    make_valid
  end
  
  def test_should_not_accept_invalid_address
    invalid_address_supplier = Supplier.new(:name => 'Kate\'s Kitchen', :address => 'sdjhfksjhfkjsahkjhsr')
    assert_equal invalid_address_supplier.valid?, false
  end
end
