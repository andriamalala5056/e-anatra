class Etablissement < ApplicationRecord
    has_many :associate_user_etabs
    has_many :user, through: :associate_user_etabs
end
