package com.fashionistaecommerceapp.app.modules.exploreshop.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ExploreShopModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatProductsYou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_products_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_choose_which_you)

)
