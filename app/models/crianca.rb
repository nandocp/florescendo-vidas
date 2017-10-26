class Crianca < ApplicationRecord
	has_many :responsaveis, dependent: :destroy, inverse_of: :crianca

	# definição de um attr_writer => responsaveis_attributes=(attributes)
  accepts_nested_attributes_for :responsaveis
end
