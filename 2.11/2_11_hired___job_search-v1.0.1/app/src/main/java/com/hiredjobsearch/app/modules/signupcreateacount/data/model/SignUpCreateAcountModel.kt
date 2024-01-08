package com.hiredjobsearch.app.modules.signupcreateacount.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpCreateAcountModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateAccount: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_create_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrContinueWith: String? =
      MyApp.getInstance().resources.getString(R.string.msg_or_continue_with)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_already_have_an)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLargeLabelMedium: String? = MyApp.getInstance().resources.getString(R.string.lbl_login)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTermAndCondition: String? =
      MyApp.getInstance().resources.getString(R.string.msg_by_signing_up_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
