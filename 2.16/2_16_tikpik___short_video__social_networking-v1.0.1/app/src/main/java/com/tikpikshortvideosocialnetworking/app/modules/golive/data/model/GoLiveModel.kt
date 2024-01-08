package com.tikpikshortvideosocialnetworking.app.modules.golive.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class GoLiveModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFlip: String? = MyApp.getInstance().resources.getString(R.string.lbl_flip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFilter: String? = MyApp.getInstance().resources.getString(R.string.lbl_filter)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEffects: String? = MyApp.getInstance().resources.getString(R.string.lbl_effects)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTimer: String? = MyApp.getInstance().resources.getString(R.string.lbl_timer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComm: String? = MyApp.getInstance().resources.getString(R.string.lbl_comm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShare: String? = MyApp.getInstance().resources.getString(R.string.lbl_share)

)
