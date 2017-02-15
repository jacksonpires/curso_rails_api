class Contact < ApplicationRecord
  belongs_to :kind

  def author
    "Jackson Pires"
  end

  def kind_desription
    self.kind.description
  end

  def as_json(options={})
    super(
      root: true,
      methods: [:kind_desription, :author],
      include: { kind: { only: :description }}
    )
  end
end
