package com.jusplaymoviestreamingapp.app.modules.setting.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SettingModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_setting)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLanguage: String? = MyApp.getInstance().resources.getString(R.string.lbl_language)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnglish: String? = MyApp.getInstance().resources.getString(R.string.lbl_english)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifiction: String? = MyApp.getInstance().resources.getString(R.string.lbl_notifiction)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloadInHigh: String? =
      MyApp.getInstance().resources.getString(R.string.msg_download_in_high)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloadUsingOnly: String? =
      MyApp.getInstance().resources.getString(R.string.msg_download_using_only)

)
