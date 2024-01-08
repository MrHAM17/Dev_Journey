package com.tunecastmusicstreamingpodcastapp.app.modules.createnewpin.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class CreateNewPinModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_create_new_pin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddAPINNumber: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_a_pin_number)

)
