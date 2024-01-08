package com.moviestreaming.app.modules.searcheight.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.searcheight.`data`.model.SearchEightModel
import org.koin.core.KoinComponent

class SearchEightVM : ViewModel(), KoinComponent {
  val searchEightModel: MutableLiveData<SearchEightModel> = MutableLiveData(SearchEightModel())

  var navArguments: Bundle? = null
}
