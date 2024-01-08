package com.housitbuyrentsellproperty.app.modules.historydetail.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class HistoryDetailModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_detail)
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
  var txtTransactionDetail: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_detail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_in2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtElevenMillionTwoHundredEightyT: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_11_28_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCheckOut: String? = MyApp.getInstance().resources.getString(R.string.lbl_check_out2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneMillionTwoHundredEightyTwoT: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_01_28_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOwnerName: String? = MyApp.getInstance().resources.getString(R.string.lbl_owner_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnderson: String? = MyApp.getInstance().resources.getString(R.string.lbl_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactionType: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRent: String? = MyApp.getInstance().resources.getString(R.string.lbl_rent)
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
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_31_250)
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
  var txtAnEmailCom: String? = MyApp.getInstance().resources.getString(R.string.msg_an_email_com2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLovetheestate: String? =
      MyApp.getInstance().resources.getString(R.string.msg_love_the_estate)

)
