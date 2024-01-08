package com.comforthotelbookingapp.app.modules.confirmpayment.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ConfirmPaymentModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPresidentHotel: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_bulgari_resort)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_378_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_27)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNight: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_december_16_2024)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckOut: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_out)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth1: String? = MyApp.getInstance().resources.getString(R.string.msg_december_20_2024)
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
  var txtNightsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_nights)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_435_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTaxesFeesTen: String? = MyApp.getInstance().resources.getString(R.string.msg_taxes_fees_10)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_44_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_479_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChange: String? = MyApp.getInstance().resources.getString(R.string.lbl_change)

)
