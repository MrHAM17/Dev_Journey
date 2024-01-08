package com.firstbankdigitalbanking.app.modules.transactions.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class Balance1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_756)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCARDHOLDER: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_holder)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEddyCusuma: String? = MyApp.getInstance().resources.getString(R.string.lbl_eddy_cusuma)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVALIDTHRU: String? = MyApp.getInstance().resources.getString(R.string.lbl_valid_thru)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandTwoHundredTwentyTwo: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_12_22)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThirtySevenMillionSevenHundred: String? =
      MyApp.getInstance().resources.getString(R.string.msg_3778_1234)

)
