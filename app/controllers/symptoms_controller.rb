class SymptomsController < ApplicationController
	def index
		@recommendation = Recommendation.find(params[:recommendation_id])
		@symptoms = @recommendation.symptoms
    end
    # great comment
    def  new
    	@recommendation = Recommendation.find(params[:recommendation_id])
    	@symptom = @recommendation.symptoms.new
    end

    def create
  		@recommendation = Recommendation.find(params[:recommendation_id])
  		@symptom = @recommendation.symptoms.new(review_params)
  		if @review.save
    		redirect_to recommendation_symptoms_path(@recommendation),
                  notice: "You've just added a new symptom."
  		else
    		render :new
  		end
	end

	private

	def review_params
  		params.require(:symptom).permit(:name, :severity)
	end
end
