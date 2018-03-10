class ItemsController < ApplicationController
  def show
    #Itemモデルのfindメソッドを使用して、パラメータに値に一致するidのデータを検索している
    #取得したデータを@itemという変数にセットする
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    @item.save

    redirect_to"/items/#{@item.id}"

  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to "/items/#{@item.id}"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to "/items"
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
  end

end
