package com.tikpikshortvideosocialnetworking.app.modules.fillyourprofileblankform.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FillYourProfileBlankFormModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fill_your_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFullNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etAddressValue: String? = null
)
