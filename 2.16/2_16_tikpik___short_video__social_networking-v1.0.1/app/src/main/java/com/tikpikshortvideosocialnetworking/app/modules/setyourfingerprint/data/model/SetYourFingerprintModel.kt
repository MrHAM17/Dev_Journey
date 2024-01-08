package com.tikpikshortvideosocialnetworking.app.modules.setyourfingerprint.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SetYourFingerprintModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
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
