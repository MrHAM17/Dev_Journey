package com.hiredjobsearch.app.modules.selectacountry.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class SelectACountryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_a_country2)

)
