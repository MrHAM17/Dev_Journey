package com.housitbuyrentsellproperty.app.modules.transaction.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class TransactionModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactions: String? = MyApp.getInstance().resources.getString(R.string.lbl_transactions)

)
