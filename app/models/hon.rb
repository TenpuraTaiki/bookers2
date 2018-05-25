class Hon < ApplicationRecord
    validates :title, presence: true
    validates :kansou, presence: true
    validates :kansou, length: { maximum: 200 }

    belongs_to :yuza
end
