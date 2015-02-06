class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  #Validations 
  validates_presence_of :title, :price, :description
  validates :price ,format: { with: /\A\d+(?:\.\d{0,2})?\z/ } #maybe gem money-rails,would make it more clear(?)

  def average_rating
  	self.reviews.average(:rating) # .average!!! -method to REMEMBER! 
  end

end
