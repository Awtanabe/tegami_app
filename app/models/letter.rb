class Letter < ApplicationRecord
  belongs_to :user

  enum option: {
    option1: 0,
    option2: 1
  }
end
