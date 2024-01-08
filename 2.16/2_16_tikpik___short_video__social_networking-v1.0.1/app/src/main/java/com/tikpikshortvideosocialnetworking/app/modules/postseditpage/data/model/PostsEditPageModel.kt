package com.tikpikshortvideosocialnetworking.app.modules.postseditpage.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class PostsEditPageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFlip: String? = MyApp.getInstance().resources.getString(R.string.lbl_flip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFlip1: String? = MyApp.getInstance().resources.getString(R.string.lbl_flip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFlip2: String? = MyApp.getInstance().resources.getString(R.string.lbl_flip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpeed: String? = MyApp.getInstance().resources.getString(R.string.lbl_speed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFilters: String? = MyApp.getInstance().resources.getString(R.string.lbl_filters)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBeauty: String? = MyApp.getInstance().resources.getString(R.string.lbl_beauty)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTimer: String? = MyApp.getInstance().resources.getString(R.string.lbl_timer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReply: String? = MyApp.getInstance().resources.getString(R.string.lbl_reply)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFlash: String? = MyApp.getInstance().resources.getString(R.string.lbl_flash)

)
