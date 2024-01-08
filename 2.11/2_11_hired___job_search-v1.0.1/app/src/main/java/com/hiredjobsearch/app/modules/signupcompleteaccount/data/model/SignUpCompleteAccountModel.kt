package com.hiredjobsearch.app.modules.signupcompleteaccount.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpCompleteAccountModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCompleteYourAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_complete_your_account)
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
  var txtMediumLabelSemi: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi1: String? = MyApp.getInstance().resources.getString(R.string.lbl_last_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi2: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_a_country)
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
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLastNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
