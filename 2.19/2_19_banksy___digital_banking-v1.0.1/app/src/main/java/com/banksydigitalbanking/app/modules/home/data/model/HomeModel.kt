package com.banksydigitalbanking.app.modules.home.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_welcome_back)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotalBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_total_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_567_12)

)
