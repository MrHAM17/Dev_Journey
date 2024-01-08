package com.moviestreaming.app.modules.exploreeight.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class Specials6RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDrama: String? = MyApp.getInstance().resources.getString(R.string.lbl_drama)

)
