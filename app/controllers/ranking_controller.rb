class RankingController < ApplicationController
  def have
    @title = "Haved Item"
    @rank = Have.group(:item_id).order('count_item_id desc').count(:item_id)
    @items = Item.all
  end

  def want
    @title = "Wanted Item"
    @rank = Want.group(:item_id).order('count_item_id desc').count(:item_id)
    @items = Item.all
  end

end
