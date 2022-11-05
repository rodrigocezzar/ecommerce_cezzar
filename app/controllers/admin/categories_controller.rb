# frozen_string_literal: true

module Admin
  # Categories Controller Admin
  class CategoriesController < BaseController
    before_action :set_category, only: %i[show edit update destroy]

    def index
      @categories = Category.all
    end

    def show; end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      return redirect_to admin_categories_path(@category), notice: 'Categoria criada com sucesso!' if @category.save

      render :new, status: :unprocessable_entity
    end

    def edit; end

    def update
      category_update = @category.update(category_params)
      return redirect_to admin_categories_path(@category), notice: 'Categoria atualizada!' if category_update

      render :edit, status: :unprocessable_entity
    end

    def destroy
      return redirect_to admin_categories_path, notice: 'Categoria excluída com sucesso.' if @category.destroy
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :position)
    end
  end
end
