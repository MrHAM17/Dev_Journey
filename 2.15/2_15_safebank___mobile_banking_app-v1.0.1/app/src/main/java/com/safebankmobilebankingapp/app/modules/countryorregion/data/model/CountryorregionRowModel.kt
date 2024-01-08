package com.safebankmobilebankingapp.app.modules.countryorregion.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class CountryorregionRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUnitedKingdom: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_united_kingdom)

)
