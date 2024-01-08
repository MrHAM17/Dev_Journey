package com.safebankmobilebankingapp.app.modules.transferamount.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class TransferAmountModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_transfer_amount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTo: String? = MyApp.getInstance().resources.getString(R.string.lbl_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMarleeRice: String? = MyApp.getInstance().resources.getString(R.string.lbl_marlee_rice)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIDCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_id_14345112075)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmount: String? = MyApp.getInstance().resources.getString(R.string.lbl_amount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_02)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.msg_available_balance)

)
