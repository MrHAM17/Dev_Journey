package com.banksydigitalbanking.app.modules.addperson.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class AddPersonModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_contact)
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
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCardNumberValue: String? = null
)
