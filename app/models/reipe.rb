class Reipe < ApplicationRecord
    belongs_to :user
    attachment :image

end
