package com.comforthotelbookingapp.app.modules.viewticket.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ViewTicketModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_ticket)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRoyalePresident: String? =
      MyApp.getInstance().resources.getString(R.string.msg_royale_president)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDanielAustin: String? = MyApp.getInstance().resources.getString(R.string.lbl_daniel_austin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPhoneNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWidget: String? = MyApp.getInstance().resources.getString(R.string.msg_1_123_456_789_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDec: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec_16_2024)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckOut: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_out)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDec1: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec_20_2024)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHotel: String? = MyApp.getInstance().resources.getString(R.string.lbl_hotel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRoyalePresident1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_royale_president2)
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

)
