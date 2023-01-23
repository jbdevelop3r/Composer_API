class ComposerSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :songs
  has_many :albums 
end
