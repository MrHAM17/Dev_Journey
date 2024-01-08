package com.fashionistaecommerceapp.app.modules.discountitems.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class DiscountitemsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPremiumWatch: String? = MyApp.getInstance().resources.getString(R.string.lbl_premium_watch)

)
