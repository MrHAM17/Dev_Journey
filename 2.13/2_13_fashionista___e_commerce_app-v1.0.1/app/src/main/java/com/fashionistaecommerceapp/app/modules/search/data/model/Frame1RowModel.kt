package com.fashionistaecommerceapp.app.modules.search.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPremiumWatch: String? = MyApp.getInstance().resources.getString(R.string.lbl_premium_watch)

)
