class ArticleSectionTypesController < ApplicationController
  # GET /article_section_types
  # GET /article_section_types.xml
  def index
    @article_section_types = ArticleSectionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @article_section_types }
    end
  end

  # GET /article_section_types/1
  # GET /article_section_types/1.xml
  def show
    @article_section_type = ArticleSectionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article_section_type }
    end
  end

  # GET /article_section_types/new
  # GET /article_section_types/new.xml
  def new
    @article_section_type = ArticleSectionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article_section_type }
    end
  end

  # GET /article_section_types/1/edit
  def edit
    @article_section_type = ArticleSectionType.find(params[:id])
  end

  # POST /article_section_types
  # POST /article_section_types.xml
  def create
    @article_section_type = ArticleSectionType.new(params[:article_section_type])

    respond_to do |format|
      if @article_section_type.save
        format.html { redirect_to(@article_section_type, :notice => 'Article section type was successfully created.') }
        format.xml  { render :xml => @article_section_type, :status => :created, :location => @article_section_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article_section_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /article_section_types/1
  # PUT /article_section_types/1.xml
  def update
    @article_section_type = ArticleSectionType.find(params[:id])

    respond_to do |format|
      if @article_section_type.update_attributes(params[:article_section_type])
        format.html { redirect_to(@article_section_type, :notice => 'Article section type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article_section_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /article_section_types/1
  # DELETE /article_section_types/1.xml
  def destroy
    @article_section_type = ArticleSectionType.find(params[:id])
    @article_section_type.destroy

    respond_to do |format|
      format.html { redirect_to(article_section_types_url) }
      format.xml  { head :ok }
    end
  end
end
