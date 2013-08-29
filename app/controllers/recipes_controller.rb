class RecipesController < ApplicationController
  # GET /recipes
  # GET /recipes.json
  def index
    @title = "Welcome"
    @recipes = Recipe.all
    @user = User.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipes }
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show

    @recipe = Recipe.find(params[:id])
    @title = "#{@recipe.recipe_name}"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @title = "New Recipe"
    @recipe = current_user.recipes.build(params[:recipe])
    if request.post?
      if @recipe.save
        redirect_to current_user, :notice => 'Recipe created!'
      else
        redirect_to current_user, :notice => 'Recipe was not created, Sorry.'
      end
    end
  end

  # GET /recipes/1/edit
  def edit
    @title = "Edit Your Recipe"

    @recipe = Recipe.find(params[:id])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = current_user.recipes.build(params[:recipe])
    if request.post?
      if @recipe.save
        redirect_to current_user, :notice => 'Recipe created!'
      else
        redirect_to current_user, :notice => 'Recipe was not created, Sorry.'
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }

      else
        format.html { render action: "edit" }

      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end
end
