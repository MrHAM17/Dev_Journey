package com.hiredjobsearch.app.modules.language.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class EnglishukRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEnglishUK: String? = MyApp.getInstance().resources.getString(R.string.lbl_english_uk)

)
