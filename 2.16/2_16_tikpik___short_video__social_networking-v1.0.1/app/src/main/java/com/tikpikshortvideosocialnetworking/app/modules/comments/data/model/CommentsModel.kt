package com.tikpikshortvideosocialnetworking.app.modules.comments.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class CommentsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKComments: String? = MyApp.getInstance().resources.getString(R.string.lbl_24_8k_comments)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCommentValue: String? = null
)
