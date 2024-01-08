package com.shopsieecommerceapp.app.modules.newpost.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class NewPostModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddPhoto: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_photo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddVideo: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_video)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTagAFriend: String? = MyApp.getInstance().resources.getString(R.string.lbl_tag_a_friend)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWriteAnArticle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_write_an_article)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMoreOptions: String? = MyApp.getInstance().resources.getString(R.string.lbl_more_options)

)
