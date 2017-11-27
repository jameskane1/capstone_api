class SportsController < ProtectedController
  before_action :set_sport, only: [:show, :update, :destroy]

  # GET /sports
  def index
    @sports = current_user.sports.all

    render json: @sports
  end

  # GET /sports/1
  def show
    render json: @sport
  end

  # POST /sports
  def create
    @sport = current_user.sports.build(sport_params)

    if @sport.save
      render json: @sport, status: :created, location: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sports/1
  def update
    if @sport.update(sport_params)
      render json: @sport
    else
      render json: @sport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sports/1
  def destroy
    @sport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport
      @sport = current_user.sports.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sport_params
      params.require(:sport).permit(:team, :league, :google, :user_id)
    end
end
