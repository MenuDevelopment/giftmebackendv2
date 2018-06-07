class PledgeSerializer < ActiveModel::Serializer
  attributes :id, :amount, :message
  has_one :user
  has_one :gift
end
