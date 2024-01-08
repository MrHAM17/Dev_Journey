package com.comforthotelbookingapp.app.modules.fillprofile.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class FillProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
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
  var etDateOfBirthValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
