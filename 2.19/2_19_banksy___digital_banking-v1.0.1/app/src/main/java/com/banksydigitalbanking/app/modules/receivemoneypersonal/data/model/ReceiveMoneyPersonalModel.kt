package com.banksydigitalbanking.app.modules.receivemoneypersonal.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ReceiveMoneyPersonalModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_first_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_last_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel3: String? = MyApp.getInstance().resources.getString(R.string.lbl_country)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel4: String? = MyApp.getInstance().resources.getString(R.string.lbl_amount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel5: String? = MyApp.getInstance().resources.getString(R.string.lbl_currency)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel6: String? = MyApp.getInstance().resources.getString(R.string.lbl_massage)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFirstNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLastNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCountryValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etAmountValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputs1Value: String? = null
)
