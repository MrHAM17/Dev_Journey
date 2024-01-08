package com.moviestreaming.app.modules.exploreten.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class Trending1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_dark_phoenix2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSubLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_sub_label)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStar: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_5)

)
