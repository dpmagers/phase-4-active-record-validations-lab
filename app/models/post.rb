class Post < ApplicationRecord
    validates :title, presence: true, on: :create
    validates :title, presence: true, on: :update, if: :title_is_clickbait
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: ['Fiction', 'Non-Fiction']
    validate :title_is_clickbait


    def title_is_clickbait
        unless self.title ==  "Won't Believe" || "Secret" || "Top [number]" ||  "Guess"
            errors.add(:title, "You need these phrases in your title!")
    end 


            #     if self.title.include?  "Won't Believe" || "Secret" || "Top [number]" ||  "Guess"
    #         errors.add(:title, "You need these phrases in your title!")

    # end 
        # title.include? "Won't Believe" || "Secret" || "Top [number]" ||  "Guess"
        #     render json: self
        # unless self.title !=  "Won't Believe" || "Secret" || "Top [number]" ||  "Guess"
        #     errors.add(:title, "You need these phrases in your title!")
        # else 
        #     render json: self
        # unless self.title !=  "Won't Believe" || "Secret" || "Top [number]" ||  "Guess"

        
        # if :title is "True Facts", will not be allowed
    end 


    # describe 'Custom validations: title is clickbait' do
    #     it { is_expected.to allow_value("You Won't Believe These True Facts").for(:title) }
    #     it { is_expected.not_to allow_value('True Facts').for(:title) }





end
