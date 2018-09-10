class Post < ActiveRecord::Base
	#attr_accessible :title, :content
	def params_posts
     params.require(:posts).permit(:title, :content)
    end

    validates :title, :content ,:presence => true
    validates :title, :length => {:minimum => 2}
    validates :title, :uniqueness => {:message => "title alredy taken"}

end
