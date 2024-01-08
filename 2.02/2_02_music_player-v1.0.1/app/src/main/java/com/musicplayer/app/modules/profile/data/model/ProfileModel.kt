package com.musicplayer.app.modules.profile.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtErlikBachman: String? = MyApp.getInstance().resources.getString(R.string.lbl_erlik_bachman)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.msg_bachman_mail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMySubscription: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_my_subscription)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.msg_valid_until_may)

)
