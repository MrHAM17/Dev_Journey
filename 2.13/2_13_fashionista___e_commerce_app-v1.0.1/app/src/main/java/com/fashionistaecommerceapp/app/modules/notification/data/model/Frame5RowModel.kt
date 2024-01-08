package com.fashionistaecommerceapp.app.modules.notification.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class Frame5RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtYouPurchasedShoes: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_purchased_shoes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_02_minites_ago)

)
