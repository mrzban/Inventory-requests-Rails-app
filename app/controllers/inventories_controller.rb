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

# private
#   def article_params
#     params.require(:article).permit(:title, :text)
#   end



  # before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  #
  # # GET /microposts
  # # GET /microposts.json
  # def index
  #   @inventoryrequests = Inventory.all
  # end
  #
  # # GET /microposts/1
  # # GET /microposts/1.json
  # def show
  # end
  #
  # # GET /microposts/new
  # def new
  #   @inventory = Inventory.new
  # end
  #
  # # GET /microposts/1/edit
  # def edit
  # end
  #
  # # POST /microposts
  # # POST /microposts.json
  # def create
  #   # @inventory = Inventory.new(inventory_params)
  #   #
  #   # respond_to do |format|
  #   #   if @inventory.save
  #   #     format.html { redirect_to @inventory, notice: 'Micropost was successfully created.' }
  #   #     format.json { render :show, status: :created, location: @inventory }
  #   #   else
  #   #     format.html { render :new }
  #   #     format.json { render json: @inventory.errors, status: :unprocessable_entity }
  #   #   end
  #   # end
  #   @micropost = Micropost.new(params[:micropost])
  #
  #   @micropost.save
  #   redirect_to @micropost
  # end
  #
  # # PATCH/PUT /microposts/1
  # # PATCH/PUT /microposts/1.json
  # def update
  #   respond_to do |format|
  #     if @inventory.update(micropost_params)
  #       format.html { redirect_to @inventory, notice: 'Inventory request was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @inventory }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @inventory.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /microposts/1
  # # DELETE /microposts/1.json
  # def destroy
  #   @inventory.destroy
  #   respond_to do |format|
  #     format.html { redirect_to inventory_url, notice: 'Inventory request was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_inventory
  #     @inventory = Inventory.find(params[:id])
  #   end
  #
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def inventory_params
  #     params.require(:inventory).permit(:content, :user_id)
  #   end
end
