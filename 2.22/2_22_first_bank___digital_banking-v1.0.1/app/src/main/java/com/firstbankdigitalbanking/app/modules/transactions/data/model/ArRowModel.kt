package com.firstbankdigitalbanking.app.modules.transactions.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ArRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFreepikSales: String? = MyApp.getInstance().resources.getString(R.string.lbl_freepik_sales)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_25_jan_10_40_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_750)

)
