package com.moviestreaming.app.modules.channelfive.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class ChannelFiveModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_live_channel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.msg_the_last_black_man)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fertility_and_desolation)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDirector: String? = MyApp.getInstance().resources.getString(R.string.lbl_director)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnnaBodenRyan: String? =
      MyApp.getInstance().resources.getString(R.string.msg_anna_boden_ryan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDirector1: String? = MyApp.getInstance().resources.getString(R.string.lbl_cast)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnnaBodenRyan1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_brie_larson_samuel)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAction: String? = MyApp.getInstance().resources.getString(R.string.lbl_special_for_you2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMore: String? = MyApp.getInstance().resources.getString(R.string.lbl_more)

)
