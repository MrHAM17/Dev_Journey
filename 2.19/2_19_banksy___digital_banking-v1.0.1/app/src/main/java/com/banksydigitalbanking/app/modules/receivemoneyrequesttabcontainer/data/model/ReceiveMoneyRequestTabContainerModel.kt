package com.banksydigitalbanking.app.modules.receivemoneyrequesttabcontainer.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ReceiveMoneyRequestTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_money_request)

)
