package com.ecommerce.app.modules.profile.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_dominic_ovo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_dominic_ovo2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGender: String? = MyApp.getInstance().resources.getString(R.string.lbl_gender)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMale: String? = MyApp.getInstance().resources.getString(R.string.lbl_male)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBirthday: String? = MyApp.getInstance().resources.getString(R.string.lbl_birthday)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_12_2000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail1: String? = MyApp.getInstance().resources.getString(R.string.msg_rex4dom_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPhoneNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMobileNumberValue: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_307_555_0133)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChangePassword: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg)

)
