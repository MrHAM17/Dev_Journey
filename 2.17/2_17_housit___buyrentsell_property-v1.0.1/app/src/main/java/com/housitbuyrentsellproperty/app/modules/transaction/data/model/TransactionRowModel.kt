package com.housitbuyrentsellproperty.app.modules.transaction.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class TransactionRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWingsTower: String? = MyApp.getInstance().resources.getString(R.string.lbl_wings_tower)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.msg_november_21_2021)

)
