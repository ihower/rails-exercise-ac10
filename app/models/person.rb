class Person < ApplicationRecord

  validates_presence_of :name
  
  def foo
    "foo"
  end

end
