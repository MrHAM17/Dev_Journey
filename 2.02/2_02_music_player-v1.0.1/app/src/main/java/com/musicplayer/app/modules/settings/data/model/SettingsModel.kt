package com.musicplayer.app.modules.settings.`data`.model

import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_equalizer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMySettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDefault: String? = MyApp.getInstance().resources.getString(R.string.lbl_default)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClubMusic: String? = MyApp.getInstance().resources.getString(R.string.lbl_club_music)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClassicalMusic: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_classical_music)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDanceMusic: String? = MyApp.getInstance().resources.getString(R.string.lbl_dance_music)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLowFrequencyGain: String? =
      MyApp.getInstance().resources.getString(R.string.msg_low_frequency_gain)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLowFrequencyGain1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_low_frequency_gain)

)
