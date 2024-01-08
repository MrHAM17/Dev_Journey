package com.banksydigitalbanking.app.modules.electricbill.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ElectricBillModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? =
      MyApp.getInstance().resources.getString(R.string.msg_electricity_bill2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel3: String? = MyApp.getInstance().resources.getString(R.string.lbl_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel4: String? = MyApp.getInstance().resources.getString(R.string.lbl_from)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel5: String? = MyApp.getInstance().resources.getString(R.string.lbl_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtElectricFee: String? = MyApp.getInstance().resources.getString(R.string.lbl_electric_fee)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTax: String? = MyApp.getInstance().resources.getString(R.string.lbl_tax)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOTP: String? = MyApp.getInstance().resources.getString(R.string.lbl_otp)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_select_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etAddressValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDate1Value: String? = null
)
