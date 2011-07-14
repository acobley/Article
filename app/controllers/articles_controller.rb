class ArticlesController < ApplicationController

def new
   print 'Hello'
   print ''+params[:id]
#  get the section Id
# get the section titles from ArticleTypeText
# get a new ArticleText for each TextType
# send both

   @SectionTitles = ArticleTextType.find(:all, :conditions => {:section => params([:id])})

   print @SectionTitles

   

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article_text_type }
    end
  end

end
