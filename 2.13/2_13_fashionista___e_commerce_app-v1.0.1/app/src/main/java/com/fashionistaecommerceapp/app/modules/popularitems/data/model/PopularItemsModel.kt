package com.fashionistaecommerceapp.app.modules.popularitems.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class PopularItemsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPopularItems: String? = MyApp.getInstance().resources.getString(R.string.lbl_popular_items)

)
