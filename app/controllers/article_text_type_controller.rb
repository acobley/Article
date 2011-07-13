class ArticleTextTypeController < ApplicationController
def index
    @articletexttypes = ArticleTextType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ArticleTextType }
    end
  end

def new
    @articletexttype = ArticleTextType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @picture }
    end
  end

def create
    @articletexttype = ArticleTextType.new(params[:picture])

    respond_to do |format|
      if @articletexttype.save
        format.html { redirect_to(@picture, :notice => 'Picture was successfully created.') }
        format.xml  { render :xml => @picture, :status => :created, :location => @picture }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @picture.errors, :status => :unprocessable_entity }
      end
    end
  end

end
