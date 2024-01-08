package com.banksydigitalbanking.app.modules.electricbill.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ElectricbillRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJonathanAnderson: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jonathan_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg_1222_3443_9881_1222)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_31_250)

)
