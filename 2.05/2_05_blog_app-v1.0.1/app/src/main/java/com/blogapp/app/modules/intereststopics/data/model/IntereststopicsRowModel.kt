package com.blogapp.app.modules.intereststopics.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class IntereststopicsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEasyToUse: String? = MyApp.getInstance().resources.getString(R.string.lbl_art)

)
