class GiftSerializer < ActiveModel::Serializer
  attributes :id, :item_name, :item_link, :item_description, :item_price, :end_date, :pledge_amount

  def pledge_amount
    sum = 0.0
    object.pledges.each { |e| sum = sum + e.amount  }
    sum
  end
end
