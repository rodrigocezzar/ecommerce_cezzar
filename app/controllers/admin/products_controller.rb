# frozen_string_literal: true

module Admin
  # Products Controller Admin
  class ProductsController < BaseController
    before_action :set_product, only: %i[show edit update destroy]

    def index
      @products = Product.all
    end

    def edit; end

    def new
      @product = Product.new
    end

    def show; end

    def create
      @product = Product.new(product_params)
      return redirect_to admin_products_path(@product), notice: 'Produto criado com sucesso!' if @product.save

      render :new, status: :unprocessable_entity
    end

    def update
      product_update = @product.update(product_params)
      return redirect_to admin_products_path(@product), notice: 'Produto atualizado!' if product_update

      render :edit, status: :unprocessable_entity
    end

    def destroy
      return redirect_to admin_products_path, notice: 'Produto excluído com sucesso.' if @product.destroy
    end

    private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :publish, :category_id)
    end
  end
end
