class Review < ApplicationRecord
  belongs_to :product, class_name: "Review", optional: true
end
