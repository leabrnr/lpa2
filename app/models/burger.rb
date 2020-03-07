class Burger < ApplicationRecord
  def nutriments
    @product = Openfoodfacts::Product.get(code, locale: 'fr')
    @nutr =  @product.nutriments
    if @nutr
      @res = ["fat" => @nutr.fat, "sugars" => @nutr.sugars, "salt" => @nutr.salt, "proteins" => @nutr.proteins]
    else
      @res = ["fat" => "--", "sugars" => "--", "salt" => "--", "proteins" => "--"]
    end
  end

end
