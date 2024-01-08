package com.banksydigitalbanking.app.modules.carddetails.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class CarddetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShopping: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_41_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_50_35)

)
