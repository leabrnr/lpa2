class Burger < ApplicationRecord
  def nutriments
    @product = Openfoodfacts::Product.get(code, locale: 'fr')
    @nutr =  @product.nutriments
    @res = ["fat" => @nutr.fat, "sugars" => @nutr.sugars, "salt" => @nutr.salt, "proteins" => @nutr.proteins]
  end

end
