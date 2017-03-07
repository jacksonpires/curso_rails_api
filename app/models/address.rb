class Address < ApplicationRecord
  belongs_to :contact, optional: true
end
