package com.hiredjobsearch.app.modules.speciallization.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SpeciallizationRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDesignCreative: String? =
      MyApp.getInstance().resources.getString(R.string.msg_design_creative)

)
