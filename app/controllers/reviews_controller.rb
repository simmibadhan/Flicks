class ReviewsController < ApplicationController
  before_filter :load_reviewable

  def index 
  	@reviews = @reviewable.reviews
  end

  def new
    @review = @reviewable.reviews.new
  end
  
  def create
    @review = @reviewable.reviews.new(review_params)
    if @review.save
      redirect_to @reviewable, notice: "Review created."
    else
      render :new
    end
  end
  
  private

    # def load_reviewable
    # 	resource, id = request.path.split('/')[1,2]
    # 	@reviewable = resource.singularize.classify.constantize.find(id)
    # end

    def load_reviewable
    	klass = [Movie, Actor].detect { |c| params["#{c.name.underscore}_id"]}
    	@reviewable = klass.find(params["#{klass.name.underscore}_id"])
    end

    def review_params
      params.require(:review).permit(:author_name, :body, :reviewable_type, :reviewable_id)
    end
end