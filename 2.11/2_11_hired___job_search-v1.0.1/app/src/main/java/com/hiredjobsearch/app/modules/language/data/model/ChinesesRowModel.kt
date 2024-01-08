package com.hiredjobsearch.app.modules.language.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ChinesesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChineses: String? = MyApp.getInstance().resources.getString(R.string.lbl_chineses)

)
