package com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
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
  var etInputFieldsValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etInputFields1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
