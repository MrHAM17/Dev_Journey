package com.hiredjobsearch.app.modules.saved.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SavedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)

)
