package com.housitbuyrentsellproperty.app.modules.editprofile.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class EditProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etLockValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etSettingsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
