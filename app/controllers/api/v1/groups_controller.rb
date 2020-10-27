class Api::V1::GroupsController < ActionController::API
  before_action :set_group, only: [:show]

  def index
    groups = Group.all
    render json: groups, adapter: :json, status: :ok
  end

  def show
    render json: @group, adapter: :json, status: :ok
  end

  private

  def set_group
    @group = Group.find params[:id]
  end
end

# def set_blog
#   @blog = Blog.find_by_id(params[:blog_id])
#   render json: {
#     error: 'not found'
#   }, status: 404 if @blog.nil?
# end
#
# def set_comment
#   @comment = Comment.find_by_id(params[:id])
#   render json: {
#     error: 'not found'
#   }, status: 404 if @comment.nil?
# end
