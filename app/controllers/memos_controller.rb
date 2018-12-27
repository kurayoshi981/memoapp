 class MemosController < ApplicationController

before_action :move_to_index, except: :index

def index
  #トップページが呼ばれた時に動作するアクション
  @memos = Memo.all

end


def new
  #新規作成ページが呼ばれた時に動作するアクション
  @categories = Category.all
end

def destroy
    memo = Memo.find(params[:id])
    # if memo.user_id == curent_user.id
    memo.destroy
  # end
    redirect_to "/"
end


def edit
    @memo = Memo.find(params[:id])

end



def update
    memo = Memo.find(params[:id])
    memo.title = params[:memos][:title]
    memo.body = params[:memos][:body]
    memo.save
    redirect_to "/"
end

def create
  #新しいメモがフォームからpostされた時に動作するアクション
  Memo.create(create_params)
  redirect_to "/"
end

private
def create_params
  params.require(:memos).permit(:title, :body, :category_id).merge(user_id: current_user.id)
end

def move_to_index
   redirect_to action: :index unless user_signed_in?
end

end
