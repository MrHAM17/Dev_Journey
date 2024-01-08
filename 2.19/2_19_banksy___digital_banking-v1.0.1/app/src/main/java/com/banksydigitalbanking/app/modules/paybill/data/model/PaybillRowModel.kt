package com.banksydigitalbanking.app.modules.paybill.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class PaybillRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtElectricityBill: String? =
      MyApp.getInstance().resources.getString(R.string.msg_electricity_bill)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCard: String? = MyApp.getInstance().resources.getString(R.string.msg_pay_bill_of_this)

)
