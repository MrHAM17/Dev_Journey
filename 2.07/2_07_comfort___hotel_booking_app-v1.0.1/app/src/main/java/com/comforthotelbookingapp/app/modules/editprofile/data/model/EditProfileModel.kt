package com.comforthotelbookingapp.app.modules.editprofile.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class EditProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_edit_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etLabelValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLabel1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
