class GiftSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :item_link, :item_description, :item_price, :end_date
end
