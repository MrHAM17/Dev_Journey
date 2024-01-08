package com.banksydigitalbanking.app.modules.addcardone.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class AddCardOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.lbl_expires)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel3: String? = MyApp.getInstance().resources.getString(R.string.lbl_cvv)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCardNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCvvValue: String? = null
)
