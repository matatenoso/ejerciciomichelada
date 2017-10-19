class Producto < ApplicationRecord
	validates :nombre, presence: true, length:{ minimum: 8}, uniqueness: true
	validates :marca, presence: true
	validates :descripcion, presence: true, length:{ minimum: 10, maximum: 300}
	validates :precio, presence: true
end