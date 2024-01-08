package com.ecommerce.app.modules.favoriteproduct.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class FavoriteProductModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFavoriteProduct: String? =
      MyApp.getInstance().resources.getString(R.string.msg_favorite_product)

)
