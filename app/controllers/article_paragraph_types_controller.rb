class ArticleParagraphTypesController < ApplicationController
  # GET /article_paragraph_types
  # GET /article_paragraph_types.xml
  def index
    @article_paragraph_types = ArticleParagraphType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @article_paragraph_types }
    end
  end

  # GET /article_paragraph_types/1
  # GET /article_paragraph_types/1.xml
  def show
    @article_paragraph_type = ArticleParagraphType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article_paragraph_type }
    end
  end

  # GET /article_paragraph_types/new
  # GET /article_paragraph_types/new.xml
  def new
    @article_paragraph_type = ArticleParagraphType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article_paragraph_type }
    end
  end

  # GET /article_paragraph_types/1/edit
  def edit
    @article_paragraph_type = ArticleParagraphType.find(params[:id])
  end

  # POST /article_paragraph_types
  # POST /article_paragraph_types.xml
  def create
    @article_paragraph_type = ArticleParagraphType.new(params[:article_paragraph_type])

    respond_to do |format|
      if @article_paragraph_type.save
        format.html { redirect_to(@article_paragraph_type, :notice => 'Article paragraph type was successfully created.') }
        format.xml  { render :xml => @article_paragraph_type, :status => :created, :location => @article_paragraph_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article_paragraph_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /article_paragraph_types/1
  # PUT /article_paragraph_types/1.xml
  def update
    @article_paragraph_type = ArticleParagraphType.find(params[:id])

    respond_to do |format|
      if @article_paragraph_type.update_attributes(params[:article_paragraph_type])
        format.html { redirect_to(@article_paragraph_type, :notice => 'Article paragraph type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article_paragraph_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /article_paragraph_types/1
  # DELETE /article_paragraph_types/1.xml
  def destroy
    @article_paragraph_type = ArticleParagraphType.find(params[:id])
    @article_paragraph_type.destroy

    respond_to do |format|
      format.html { redirect_to(article_paragraph_types_url) }
      format.xml  { head :ok }
    end
  end
end
