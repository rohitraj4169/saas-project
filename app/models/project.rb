class Project < ApplicationRecord
  belongs_to :user
  has_many :artifacts, dependent: :destroy


end
