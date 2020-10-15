class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable


has_many :messages, dependent: :destroy


has_many :room_users
has_many :rooms, through: :room_users


has_many :favorites, dependent: :destroy
has_many :favorite_properties, class_name: "Property", through: :favorites
has_many :properties

validates :name, presence: true, length: {maximum:30,minimum:1}
validates :email, presence: true, uniqueness: true, length: {minimum:4}
validates :postcode, length: {is: 7}, numericality: { only_integer: true }
validates :phone_number, presence: true, length: {minimum:9}
#paranoia
#acts_as_paranoid
end

