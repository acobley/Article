require 'test_helper'

class ArticleSectionTypesControllerTest < ActionController::TestCase
  setup do
    @article_section_type = article_section_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_section_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_section_type" do
    assert_difference('ArticleSectionType.count') do
      post :create, :article_section_type => @article_section_type.attributes
    end

    assert_redirected_to article_section_type_path(assigns(:article_section_type))
  end

  test "should show article_section_type" do
    get :show, :id => @article_section_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @article_section_type.to_param
    assert_response :success
  end

  test "should update article_section_type" do
    put :update, :id => @article_section_type.to_param, :article_section_type => @article_section_type.attributes
    assert_redirected_to article_section_type_path(assigns(:article_section_type))
  end

  test "should destroy article_section_type" do
    assert_difference('ArticleSectionType.count', -1) do
      delete :destroy, :id => @article_section_type.to_param
    end

    assert_redirected_to article_section_types_path
  end
end
