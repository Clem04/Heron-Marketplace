class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      params[:post][:label_ids].each do |label_id|
        if label_id != ""
          PostLabel.create(label_id: label_id, post_id: @post.id)
        end
      end
      mail = MerchantMailer.thank_you(@post)
      mail.deliver_now
      mail_request = MerchantMailer.merchant_request(@post)
      mail_request.deliver_now
      redirect_to new_post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:first_name, :last_name, :email, :location,
      :category_id, :website, :description, :instagram,
      :facebook, :photos)
  end
end
