package com.banksydigitalbanking.app.modules.profile.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSuzaneJobs: String? = MyApp.getInstance().resources.getString(R.string.lbl_suzane_jobs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPassword: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPassword1: String? = MyApp.getInstance().resources.getString(R.string.lbl_touch_id)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPassword2: String? = MyApp.getInstance().resources.getString(R.string.lbl_languages)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPassword3: String? = MyApp.getInstance().resources.getString(R.string.lbl_app_information)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPassword4: String? = MyApp.getInstance().resources.getString(R.string.lbl_support)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMobileNo: String? = MyApp.getInstance().resources.getString(R.string.lbl_5156446981)

)
