package com.fashionistaecommerceapp.app.modules.complete.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class CompleteModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOrderCompleted: String? =
      MyApp.getInstance().resources.getString(R.string.msg_order_completed)

)
