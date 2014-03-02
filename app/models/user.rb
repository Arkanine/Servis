class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, :format => {with: /[A-ZА-Я][a-zа-я]+(\s|,)[A-ZА-Я][a-zа-я]{1,19}/, message: "Формат: Имя Фамилия" }, :uniqueness => true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
