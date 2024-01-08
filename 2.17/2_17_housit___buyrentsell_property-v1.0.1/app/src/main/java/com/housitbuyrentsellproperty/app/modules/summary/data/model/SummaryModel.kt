package com.housitbuyrentsellproperty.app.modules.summary.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class SummaryModel(
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
  var txtPaymentDetail: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_detail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPeriodTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_period_time)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonthlyPayment: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_monthly_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_220)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscount: String? = MyApp.getInstance().resources.getString(R.string.lbl_discount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_88)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_352)
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
  var txtChange: String? = MyApp.getInstance().resources.getString(R.string.lbl_change)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnEmailCom: String? = MyApp.getInstance().resources.getString(R.string.msg_an_email_com2)

)
