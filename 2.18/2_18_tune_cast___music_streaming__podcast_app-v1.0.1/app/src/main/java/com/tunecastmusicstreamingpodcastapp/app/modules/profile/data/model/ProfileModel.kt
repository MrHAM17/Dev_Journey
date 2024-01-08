package com.tunecastmusicstreamingpodcastapp.app.modules.profile.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
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
