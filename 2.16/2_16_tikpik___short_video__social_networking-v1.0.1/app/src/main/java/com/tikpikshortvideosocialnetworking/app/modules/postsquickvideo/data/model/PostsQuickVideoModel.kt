package com.tikpikshortvideosocialnetworking.app.modules.postsquickvideo.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class PostsQuickVideoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCamera: String? = MyApp.getInstance().resources.getString(R.string.lbl_camera)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuick: String? = MyApp.getInstance().resources.getString(R.string.lbl_quick)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTemplates: String? = MyApp.getInstance().resources.getString(R.string.lbl_templates)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFlip: String? = MyApp.getInstance().resources.getString(R.string.lbl_flip)
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEffects: String? = MyApp.getInstance().resources.getString(R.string.lbl_effects)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUpload: String? = MyApp.getInstance().resources.getString(R.string.lbl_upload)

)
