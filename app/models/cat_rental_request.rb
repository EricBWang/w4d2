class CatRentalRequest < ApplicationRecord
    validates: :status, inclusion: %w(PENDING APPROVED DENIED)
    validates: :cat_id, :start_date, :end_date, :status, presence: true

    belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat
end
