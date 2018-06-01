class AdAdItemSerializer < ActiveModel::Serializer
  include FormatPrice
  attributes :price

end