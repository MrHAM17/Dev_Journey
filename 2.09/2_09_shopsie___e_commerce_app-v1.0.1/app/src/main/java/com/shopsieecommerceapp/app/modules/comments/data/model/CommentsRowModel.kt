package com.shopsieecommerceapp.app.modules.comments.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class CommentsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_billy_green)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_20min_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy: String? = MyApp.getInstance().resources.getString(R.string.msg_awesome_edward)

)
