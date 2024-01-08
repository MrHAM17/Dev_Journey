package com.moviestreaming.app.modules.explorenine.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class Specials8RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDrama: String? = MyApp.getInstance().resources.getString(R.string.lbl_drama)

)
