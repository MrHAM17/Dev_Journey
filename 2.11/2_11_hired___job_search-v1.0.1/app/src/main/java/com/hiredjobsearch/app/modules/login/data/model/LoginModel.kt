package com.hiredjobsearch.app.modules.login.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class LoginModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHiWelcomeBack: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_welcome_back)
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
      MyApp.getInstance().resources.getString(R.string.msg_don_t_have_an_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLargeLabelMedium: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)
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
