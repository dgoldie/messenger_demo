# this is a class
class User < ApplicationRecord
  has_many :updates, :dependent => :destroy
end
