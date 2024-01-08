package com.banksydigitalbanking.app.modules.sendmoney.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class SendMoneyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_money_transfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFavorite: String? = MyApp.getInstance().resources.getString(R.string.lbl_favorite)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAllContact: String? = MyApp.getInstance().resources.getString(R.string.lbl_all_contact)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtA: String? = MyApp.getInstance().resources.getString(R.string.lbl_a)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtB: String? = MyApp.getInstance().resources.getString(R.string.lbl_b)

)
