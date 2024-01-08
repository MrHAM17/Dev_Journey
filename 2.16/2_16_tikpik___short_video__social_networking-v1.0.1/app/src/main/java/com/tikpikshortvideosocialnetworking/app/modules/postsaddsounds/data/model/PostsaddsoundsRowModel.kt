package com.tikpikshortvideosocialnetworking.app.modules.postsaddsounds.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class PostsaddsoundsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAsItWas: String? = MyApp.getInstance().resources.getString(R.string.lbl_as_it_was)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHarryStyles: String? = MyApp.getInstance().resources.getString(R.string.lbl_harry_styles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_01_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_65_1m)

)
