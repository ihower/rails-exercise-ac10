require 'rails_helper'

RSpec.describe Person, type: :model do

  it "should validate name" do
    @person = Person.new
    expect(@person.save).to eq(false)

    @person = Person.new(:name => "ihower")
    expect(@person.save).to eq(true)
  end

end
