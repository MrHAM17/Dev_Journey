package com.fashionistaecommerceapp.app.modules.information.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class InformationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_information)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnneChristion: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_anne_christion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_xyz_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_account_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_date_of_birth)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.lbl_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel3: String? = MyApp.getInstance().resources.getString(R.string.lbl_mobile_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDateOfBirthValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etAddressValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etMobileNumberValue: String? = null
)
