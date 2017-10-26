class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
  			 :registerable,
         :recoverable,
         :rememberable,
         :trackable
  validates :nome,  presence: { message: 'Nome deve ser preenchido' },
  									length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: { message: 'Email deve ser preenchido' }, 
  									length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  def remember_me
    true
  end
end