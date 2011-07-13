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
      format.xml  { render :xml => @articletexttype }
    end
  end

def create
    @articletexttype = ArticleTextType.new(params[:articletexttype])

    respond_to do |format|
      if @articletexttype.save
        format.html { redirect_to(@articletexttype, :notice => 'Articletexttype was successfully created.') }
        format.xml  { render :xml => @articletexttype, :status => :created, :location => @articletexttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @articletexttype.errors, :status => :unprocessable_entity }
      end
    end
  end

end
