require 'simplecov'
require 'turn/autorun'

SimpleCov.start do
  add_filter 'vendor'
end

require './recently_used'

describe RecentlyUsedList do

  it "initializes to empty" do
    list = RecentlyUsedList.new
    list.empty?.must_equal true
  end

  it "shovels items to the front of the list" do
    list = RecentlyUsedList.new
    list << "one"
    list << "two"
    list.first.must_equal "two"
  end

  it "pushs items to the front of the list" do
    list = RecentlyUsedList.new
    list.push "one"
    list.push "two"
    list.first.must_equal "two"
  end

  it "looks up items from index" do
    list = RecentlyUsedList.new
    list << "one"
    list << "two"
    list << "three"
    list << "four"
    list[3].must_equal "one"
  end

  it "enforces unique values" do
    list = RecentlyUsedList.new
    list << "one"
    list << "two"
    list << "one"
    list.count.must_equal 2
  end

  it "moves duplicate value to the front" do
    list = RecentlyUsedList.new
    list << "one"
    list << "two"
    list << "one"
    list.first.must_equal "one"
  end

  it "can only hold as many items as the capacity" do
    list = RecentlyUsedList.new({size: 5})
    list << "one"
    list << "two"
    list << "three"
    list << "four"
    list << "five"
    list << "size"
    list << "seven"
    list.length.must_equal 5
  end
end
