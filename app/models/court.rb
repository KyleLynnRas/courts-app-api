class Court < ApplicationRecord
    validates :title, presence: true
end
