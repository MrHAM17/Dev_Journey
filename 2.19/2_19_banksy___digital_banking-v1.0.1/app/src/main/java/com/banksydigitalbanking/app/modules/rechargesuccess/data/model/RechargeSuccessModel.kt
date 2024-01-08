package com.banksydigitalbanking.app.modules.rechargesuccess.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class RechargeSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratsOrder: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recharge_done_successfully)

)
