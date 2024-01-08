package com.safebankmobilebankingapp.app.modules.countryorregion.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class CountryOrRegionModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCountryOrRegion: String? =
      MyApp.getInstance().resources.getString(R.string.msg_country_or_region)

)
