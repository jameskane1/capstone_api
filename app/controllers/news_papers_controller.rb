class NewsPapersController < ProtectedController
  before_action :set_news_paper, only: [:show, :update, :destroy]

  # GET /news_papers
  def index
    @news_papers = current_user.news_papers.all

    render json: @news_papers
  end

  # GET /news_papers/1
  def show
    render json: @news_paper
  end

  # POST /news_papers
  def create
    @news_paper = current_user.news_papers.build(news_paper_params)

    if @news_paper.save
      render json: @news_paper, status: :created, location: @news_paper
    else
      render json: @news_paper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /news_papers/1
  def update
    if @news_paper.update(news_paper_params)
      render json: @news_paper
    else
      render json: @news_paper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /news_papers/1
  def destroy
    @news_paper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_paper
      @news_paper = current_user.news_papers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_paper_params
      params.require(:news_paper).permit(:name, :site, :region, :user_id)
    end
end
