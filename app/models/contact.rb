class Contact < ApplicationRecord
  def author
    "Jackson Pires"
  end

  def as_json(options={})
    super(methods: :author, root: true)
  end
end
