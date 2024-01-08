package com.tikpikshortvideosocialnetworking.app.modules.comments.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class CommentsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAdipiscingElit: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtKristinWatson: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_kristin_watson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_938)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_days_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReply: String? = MyApp.getInstance().resources.getString(R.string.lbl_reply)

)
