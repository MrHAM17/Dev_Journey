package com.socialsocialnetworking.app.modules.comments.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class CommentsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComments: String? = MyApp.getInstance().resources.getString(R.string.lbl_comments)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCommentValue: String? = null
)
