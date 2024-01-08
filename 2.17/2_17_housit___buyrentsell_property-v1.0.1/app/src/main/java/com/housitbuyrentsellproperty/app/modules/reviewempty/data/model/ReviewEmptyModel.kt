package com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewEmptyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPeriod: String? = MyApp.getInstance().resources.getString(R.string.lbl_period)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNoteforOwner: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_note_for_owner)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentMethod: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_method)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHaveavoucher: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_have_a_voucher)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClickinhere: String? = MyApp.getInstance().resources.getString(R.string.lbl_click_in_here)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFormDateEmptyValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFormDateEmpty1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etTelevisionValue: String? = null
)
