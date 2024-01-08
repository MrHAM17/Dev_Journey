package com.helthiotelehealth.app.modules.audiocall.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class AudioCallModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_00_05_24)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSwipeBackToMenu: String? =
      MyApp.getInstance().resources.getString(R.string.msg_swipe_back_to_menu)

)
