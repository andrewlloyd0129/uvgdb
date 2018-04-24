class UserGameStatus < ApplicationRecord
  enum status: { wishlist: 0, owned: 1, beaten: 2, completed: 3 }
end
