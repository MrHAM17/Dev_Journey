package com.jusplaymoviestreamingapp.app.modules.profile.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAntonioRenders: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_antonio_renders)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRendersAntonio: String? =
      MyApp.getInstance().resources.getString(R.string.msg_renders_antonio)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHistory: String? = MyApp.getInstance().resources.getString(R.string.lbl_history)
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
  var txtSetting: String? = MyApp.getInstance().resources.getString(R.string.lbl_setting)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLogout: String? = MyApp.getInstance().resources.getString(R.string.lbl_logout)

)
