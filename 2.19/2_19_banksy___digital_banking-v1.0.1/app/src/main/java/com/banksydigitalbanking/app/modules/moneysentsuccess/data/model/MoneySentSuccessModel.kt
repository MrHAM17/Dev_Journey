package com.banksydigitalbanking.app.modules.moneysentsuccess.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class MoneySentSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratsOrder: String? =
      MyApp.getInstance().resources.getString(R.string.msg_money_sent_successfully)

)
