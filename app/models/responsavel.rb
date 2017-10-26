class Responsavel < ApplicationRecord
  belongs_to :crianca, inverse_of: :responsaveis
  validates_presence_of :crianca
end
