class Product
  include Mongoid::Document
  field :name, type: String
  field :category, type: String
  field :description, type: String
  field :price, type: Integer
  belongs_to :user
  has_many :reviews

def self.search(query)
  where(name: query) if query.present?
end
end