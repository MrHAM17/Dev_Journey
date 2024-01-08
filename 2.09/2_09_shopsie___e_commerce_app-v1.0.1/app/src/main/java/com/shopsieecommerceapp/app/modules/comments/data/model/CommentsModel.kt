package com.shopsieecommerceapp.app.modules.comments.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class CommentsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtScreenTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_title)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComments: String? = MyApp.getInstance().resources.getString(R.string.lbl_comments_148)

)
