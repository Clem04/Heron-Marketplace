class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      mail = MerchantMailer.thank_you(@post)
      mail.deliver_now
      mail_request = MerchantMailer.merchant_request(@post)
      mail_request.deliver_now
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:first_name, :last_name, :email, :location,
      :category_id, :label_id, :website, :description, :instagram,
      :facebook, :photos)
  end
end
