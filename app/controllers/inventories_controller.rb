 class InventoriesController < ApplicationController

     def index
       @inventories  = Inventory.all
     end

     def show
       @inventory = Inventory.find(params[:id])
     end

     def new
       @inventory = Inventory.new
     end




    def create
       # render plain: params[:inventory].inspect

      @inventory = Inventory.new(inventory_params) #(params[:inventory])


      if @inventory.save
        redirect_to @inventory
      else
        render 'new'
      end
    end





  def edit
    @inventory = Inventory.find(params[:id])
  end



  def update
    @inventory = Inventory.find(params[:id])

    if @inventory.update(inventory_params)
      redirect_to @inventory
    else
      render 'edit'
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy

    redirect_to inventories_path
  end



  def inventory_params
    params.require(:inventory).permit(:user_id, :reqstatus, :content)
  end


end
