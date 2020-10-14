class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable

has_many :message_users, dependent: :destroy
has_many :messages, dependent: :destroy



has_many :rooms, foreign_key: :owner_id

has_many :favorites, dependent: :destroy
has_many :properties, through: :favorites

validates :name, presence: true, length: {maximum:30,minimum:1}
validates :email, presence: true, uniqueness: true, length: {minimum:4}
validates :postcode, length: {is: 7}, numericality: { only_integer: true }
validates :phone_number, presence: true, length: {minimum:9}
#paranoia
acts_as_paranoid
end

