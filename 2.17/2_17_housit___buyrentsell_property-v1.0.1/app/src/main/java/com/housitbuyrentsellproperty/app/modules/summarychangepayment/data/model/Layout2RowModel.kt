package com.housitbuyrentsellproperty.app.modules.summarychangepayment.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout2RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_1222)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_54_200)

)
