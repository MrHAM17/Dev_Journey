package com.banksydigitalbanking.app.modules.entermoney.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class EnterMoneyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_money_transfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtKateMorgan: String? = MyApp.getInstance().resources.getString(R.string.lbl_kate_morgan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundredThirtySixMillionThre: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_159_107_1365)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_60_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_card)
  ,
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
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_31_250)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJonathanAnderson1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jonathan_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.msg_1222_3443_9881_1222)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_31_250)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etMessageValue: String? = null
)
