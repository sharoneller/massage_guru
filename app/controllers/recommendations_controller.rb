class RecommendationsController < ApplicationController
	def index
		@symptoms = Symptom.all
	end
	def show
		@recommendation = Recommendation.find(params[:id])
	end

	def show_recommendation
		@symptom = Symptom.find(params[:symptom])
		@recs = Recommendation.all
		@recommendations = @recs.select{|a| a.symptoms.include?(@symptom)}
	end
	def show_all_recommendations
		@recommendations = Recommendation.all
	end

	def edit
		@recommendation = Recommendation.find(params[:id])
	end

	def update
		@recommendation = Recommendation.find(params[:id])
  		@recommendation.update(recommendation_params)
  		redirect_to @recommendation
	end

	def new
		@recommendation = Recommendation.new
	end

	def create
		@recommendation = Recommendation.new(recommendation_params)
		@recommendation.save
		redirect_to @recommendation
	end

	def destroy
		@recommendation = Recommendation.find(params[:id])
		@recommendation.destroy
		redirect_to recommendations_url
	end


	private

	def recommendation_params
		params.require(:recommendation).permit(:modality, :duration, :frequency, :description, :pressure)
	end







end








