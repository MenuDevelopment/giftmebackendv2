class PledgeSerializer < ActiveModel::Serializer
  attributes :id, :amount, :message, :user
  has_one :user
  has_one :gift

  def user
    {id: object.user.id, first_name: object.user.first_name, last_name: object.user.last_name}
  end
end
