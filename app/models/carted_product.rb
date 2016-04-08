class CartedProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  belongs_to :order

  validates :status, inclusion: { in: %w(carted purchased removed) }
  # validates :status, inclusion: { in: ["carted", "purchased", "removed"]}
  # validates :status, presence: true, if: :contains_status?

  # def contains_status?
  #   status == "carted" || "purchased" || "removed"
  # end
end
