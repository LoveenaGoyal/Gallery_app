class Album < ApplicationRecord
  validates :title, presence: true, length: {minimum:5}, uniqueness: true
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_and_belongs_to_many :tags, inverse_of: :album
  accepts_nested_attributes_for :tags
end
