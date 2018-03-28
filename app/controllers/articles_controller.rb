class ArticlesController < ApplicationController
    
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end
    
    def create
        # render plain: article_params
        @article = Article.new(article_params)
        if @article.save
            #do something
            flash[:notice] = "Article was created!"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])

    end

    def edit 
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article has been updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    private
        def article_params
            params.require(:article).permit(:title, :description)    
        end
end