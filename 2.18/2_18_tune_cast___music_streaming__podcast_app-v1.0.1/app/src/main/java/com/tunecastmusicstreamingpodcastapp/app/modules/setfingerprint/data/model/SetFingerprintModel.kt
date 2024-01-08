package com.tunecastmusicstreamingpodcastapp.app.modules.setfingerprint.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SetFingerprintModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.msg_set_your_fingerprint)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddAFingerprint: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_a_fingerprint)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleasePutYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_put_your)

)
