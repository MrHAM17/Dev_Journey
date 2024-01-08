package com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewFillModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkyDandelionsApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sky_dandelions_apartment)
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
  var txtChangevoucher: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_voucher)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHalloweenSale: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_halloween_sale)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.msg_get_40_off_on_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFormDateFillValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFormDateFill1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etTelevisionValue: String? = null
)
