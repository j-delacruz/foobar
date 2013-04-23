class CommentsController < ApplicationController
	before_filter :find_article_id
	def create
		@comment = @article.comments.build(params[:comment])
		@comment.save
		redirect_to [@article]
	end

	private
		def find_article_id
			@article = Article.find(params[:article_id])
		end
end
