package com.comforthotelbookingapp.app.modules.refundmethod.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class RefundMethodModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.msg_cancel_hotel_booking)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseSelectA: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_select_a)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_paid_479_5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_refund_383_8)

)
