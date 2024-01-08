package com.jusplaymoviestreamingapp.app.modules.categorycomedy.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class CategoryComedyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_comedy)

)
