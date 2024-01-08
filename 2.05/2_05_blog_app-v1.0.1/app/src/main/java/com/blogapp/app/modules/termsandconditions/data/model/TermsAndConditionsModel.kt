package com.blogapp.app.modules.termsandconditions.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class TermsAndConditionsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTermAndCondition: String? =
      MyApp.getInstance().resources.getString(R.string.msg_terms_and_conditions)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_effective_september)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouCanSeeOur: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_can_see_our)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_your_account_and)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription4: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)

)
