require 'test_helper'

class ArticleParagraphTypesControllerTest < ActionController::TestCase
  setup do
    @article_paragraph_type = article_paragraph_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_paragraph_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_paragraph_type" do
    assert_difference('ArticleParagraphType.count') do
      post :create, :article_paragraph_type => @article_paragraph_type.attributes
    end

    assert_redirected_to article_paragraph_type_path(assigns(:article_paragraph_type))
  end

  test "should show article_paragraph_type" do
    get :show, :id => @article_paragraph_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @article_paragraph_type.to_param
    assert_response :success
  end

  test "should update article_paragraph_type" do
    put :update, :id => @article_paragraph_type.to_param, :article_paragraph_type => @article_paragraph_type.attributes
    assert_redirected_to article_paragraph_type_path(assigns(:article_paragraph_type))
  end

  test "should destroy article_paragraph_type" do
    assert_difference('ArticleParagraphType.count', -1) do
      delete :destroy, :id => @article_paragraph_type.to_param
    end

    assert_redirected_to article_paragraph_types_path
  end
end
