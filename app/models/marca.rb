class Marca < ApplicationRecord
	validates :nombre, presence: true, length:{ minimum: 8}, uniqueness: true
end
