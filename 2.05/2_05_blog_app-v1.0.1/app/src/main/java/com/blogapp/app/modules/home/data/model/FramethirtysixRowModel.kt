package com.blogapp.app.modules.home.`data`.model

import com.blogapp.app.R
import com.blogapp.app.appcomponents.di.MyApp
import kotlin.String

data class FramethirtysixRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumIsA: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)

)
