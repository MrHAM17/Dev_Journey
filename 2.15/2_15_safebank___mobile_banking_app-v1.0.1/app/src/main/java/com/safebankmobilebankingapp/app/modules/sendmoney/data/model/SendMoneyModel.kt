package com.safebankmobilebankingapp.app.modules.sendmoney.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SendMoneyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_send_money)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlexDordan: String? = MyApp.getInstance().resources.getString(R.string.lbl_alex_dordan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWebDeveloper: String? = MyApp.getInstance().resources.getString(R.string.lbl_web_developer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMastercard: String? = MyApp.getInstance().resources.getString(R.string.lbl_mastercard)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget: String? = MyApp.getInstance().resources.getString(R.string.msg_5093_4690_4039_5534)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterYourAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_your_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_500_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOne: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFour: String? = MyApp.getInstance().resources.getString(R.string.lbl_4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFive: String? = MyApp.getInstance().resources.getString(R.string.lbl_5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSix: String? = MyApp.getInstance().resources.getString(R.string.lbl_6)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeven: String? = MyApp.getInstance().resources.getString(R.string.lbl_7)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNine: String? = MyApp.getInstance().resources.getString(R.string.lbl_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)

)
