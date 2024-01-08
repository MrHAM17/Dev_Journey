package com.comforthotelbookingapp.app.modules.selectdateguest.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectDateGuestModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_select_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckOut: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_out)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDecCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec_16)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDecCounter1: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec_20)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGuest: String? = MyApp.getInstance().resources.getString(R.string.lbl_guest)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_total_435)

)
