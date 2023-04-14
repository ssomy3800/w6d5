class Cat < ApplicationRecord
    CAT_COLORS = ["white","grey","black","yellow","orange","brown","hybrid"]

    def birth_date_cannot_be_in_the_future
        if birth_date.present? && birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
        end
    end

    validates :birth_date, :sex, :color, :name, presence:true
    validates :sex, inclusion: {in: ["M","F"]}
    validates :color, inclusion: {in: CAT_COLORS}
    validate :birth_date_cannot_be_in_the_future



end
