class PersonasController < ApplicationController
  before_action :set_persona, only: [:show, :edit, :update, :destroy]

  def woman_wizard
    @woman = Persona.find_by(name: 'woman')
    @woman_questions = @woman.questions
    @women_guides = @woman.guides
  end

  def company_wizard
    @company = Persona.find_by(name: 'company')
    @company_questions = YAML.load(@company.questions)
    @company_guides = @company.guides
  end

  def supporter_wizard
    @supporter = Persona.find_by(name: 'supporter')
    @supporter_questions = YAML.load(@supporter.questions)
    @supporter_guides = @supporter.guides
  end

  def index
  end

  def show
  end

  def new
    @persona = Persona.new
  end

  def edit
  end

  def create
    @persona = Persona.new(persona_params)
    @persona.questions.to_json

    respond_to do |format|
      if @persona.save
        format.html { redirect_to @persona, notice: 'Persona was successfully created.' }
        format.json { render :show, status: :created, location: @persona }
      else
        format.html { render :new }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @persona.destroy
    respond_to do |format|
      format.html { redirect_to personas_url, notice: 'Persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_params
      params.require(:persona).permit(:name, :color, :description, :questions)
    end
end
