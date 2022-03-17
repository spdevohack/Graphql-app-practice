class Order < ApplicationRecord
	has_many :payments, dependent: :destroy do 
		def successful
      where("status = ?", "Successful")
    end
	end
end
