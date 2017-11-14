# this is a class
class Update < ApplicationRecord
  enum :mood => %i[good normal bad]

  belongs_to :user
end
