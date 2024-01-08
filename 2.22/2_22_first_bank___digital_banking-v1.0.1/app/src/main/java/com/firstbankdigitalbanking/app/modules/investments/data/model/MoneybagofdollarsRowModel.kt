package com.firstbankdigitalbanking.app.modules.investments.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class MoneybagofdollarsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTotalInvestedAmount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_total_invested_amount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_150_000)

)
