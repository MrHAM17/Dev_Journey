package com.tunecastmusicstreamingpodcastapp.app.modules.forgotpassword.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_forgot_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSelectWhichContact: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_which_contact)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViaSMS: String? = MyApp.getInstance().resources.getString(R.string.lbl_via_sms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundredElevenThousandOneHun: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_111_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViaEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_via_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_domain_com)

)
