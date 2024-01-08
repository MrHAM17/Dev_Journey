package com.blogapp.app.modules.interests.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class InterestsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcome: String? = MyApp.getInstance().resources.getString(R.string.lbl_welcome)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatareyouinterestedin: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_are_you_interested)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescriptionTest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_or_edit_topics)

)
