class Hon < ApplicationRecord
    validates :title, presence: true
    validates :kansou, presence: true
end
