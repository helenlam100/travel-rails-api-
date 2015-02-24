class PostSerializer < ActiveModel::Serializer
  attributes :id, :description, :photo, :name
end
