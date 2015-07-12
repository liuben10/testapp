class QuestsController < ApplicationController
  before_action :set_quest, only: [:show, :edit, :update, :destroy]

  # GET /quests
  # GET /quests.json
  def index
    @user = User.find(params[:user_id])
    @quests = @user.quests
    respond_to do |format|
      format.html
      format.json { render :json => @quests}
    end
  end
  

  # GET /quests/1
  # GET /quests/1.json
  def show
    user = User.find(params[:user_id])
    @quest = user.quests.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @comment }
    end
  end

  # GET /quests/new
  def new
    user = User.find(params[:user_id])
    @quest = user.quests.build
    respond_to do |format|
      format.html
      format.json { render :json => @comment}
    end
  end

  # GET /quests/1/edit
  def edit
    user = User.find(params[:user_id])
    @quest = user.quests.find(params[:id])
    
  end

  # POST /quests
  # POST /quests.json
  def create
    user = User.find(params[:user_id])
    @quest = user.quests.create(quest_params)

    respond_to do |format|
      if @quest.save
        format.html { redirect_to [@quest.user, @quest], notice: 'Quest was successfully created.' }
        format.json { render :show, status: :created, location: @quest }
      else
        format.html { render :new }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quests/1
  # PATCH/PUT /quests/1.json
  def update
    user = User.find(params[:user_id])
    @quest = user.quests.find(params[:id])
    respond_to do |format|
      if @quest.update(quest_params)
        format.html { redirect_to [@quest.user, @quest], notice: 'Quest was successfully updated.' }
        format.json { render :show, status: :ok, location: @quest }
      else
        format.html { render :edit }
        format.json { render json: @quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quests/1
  # DELETE /quests/1.json
  def destroy
    user = User.find(params[:user_id])
    @quest = user.quests.find(params[:id])
    @quest.destroy
    respond_to do |format|
      format.html { redirect_to user_quests_url, notice: 'Quest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest
      @quest = Quest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quest_params
      params.require(:quest).permit(:name, :description, :rating, :user_id)
    end
end
