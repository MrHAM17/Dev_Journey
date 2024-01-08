package com.fashionistaecommerceapp.app.modules.discountitems.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class DiscountItemsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_discount_items)

)
