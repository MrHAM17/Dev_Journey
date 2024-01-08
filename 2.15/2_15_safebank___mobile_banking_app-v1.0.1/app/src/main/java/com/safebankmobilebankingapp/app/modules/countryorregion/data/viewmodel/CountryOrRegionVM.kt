package com.safebankmobilebankingapp.app.modules.countryorregion.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.countryorregion.`data`.model.CountryOrRegionModel
import com.safebankmobilebankingapp.app.modules.countryorregion.`data`.model.CountryorregionRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CountryOrRegionVM : ViewModel(), KoinComponent {
  val countryOrRegionModel: MutableLiveData<CountryOrRegionModel> =
      MutableLiveData(CountryOrRegionModel())

  var navArguments: Bundle? = null

  val countryOrRegionList: MutableLiveData<MutableList<CountryorregionRowModel>> =
      MutableLiveData(mutableListOf())
}
