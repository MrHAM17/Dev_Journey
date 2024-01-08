package com.hiredjobsearch.app.modules.selectacountry.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.selectacountry.`data`.model.SelectACountryModel
import org.koin.core.KoinComponent

class SelectACountryVM : ViewModel(), KoinComponent {
  val selectACountryModel: MutableLiveData<SelectACountryModel> =
      MutableLiveData(SelectACountryModel())

  var navArguments: Bundle? = null
}
