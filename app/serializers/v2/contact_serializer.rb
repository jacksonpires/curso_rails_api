module V2
  class ContactSerializer < ActiveModel::Serializer
    attributes :id, :name, :email

    belongs_to :kind do
      link(:related) { v2_contact_kind_url(object.id) }
    end

    has_many :phones do
      link(:related) { v2_contact_phones_url(object.id) }
    end

    has_one :address do
      link(:related) { v2_contact_address_url(object.id) }
    end
  end
end
