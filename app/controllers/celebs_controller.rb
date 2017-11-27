class CelebsController < ProtectedController
  before_action :set_celeb, only: [:show, :update, :destroy]

  # GET /celebs
  def index
    @celebs = current_user.celebs.all

    render json: @celebs
  end

  # GET /celebs/1
  def show
    render json: @celeb
  end

  # POST /celebs
  def create
    @celeb = current_user.celebs.build(celeb_params)

    if @celeb.save
      render json: @celeb, status: :created, location: @celeb
    else
      render json: @celeb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /celebs/1
  def update
    if @celeb.update(celeb_params)
      render json: @celeb
    else
      render json: @celeb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /celebs/1
  def destroy
    @celeb.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celeb
      @celeb = current_user.celebs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def celeb_params
      params.require(:celeb).permit(:name, :age, :occupation, :google, :user_id)
    end
end
