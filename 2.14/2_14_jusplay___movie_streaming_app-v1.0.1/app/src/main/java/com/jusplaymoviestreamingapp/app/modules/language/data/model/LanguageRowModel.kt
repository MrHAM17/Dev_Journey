package com.jusplaymoviestreamingapp.app.modules.language.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class LanguageRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEngland: String? = MyApp.getInstance().resources.getString(R.string.lbl_england)

)
