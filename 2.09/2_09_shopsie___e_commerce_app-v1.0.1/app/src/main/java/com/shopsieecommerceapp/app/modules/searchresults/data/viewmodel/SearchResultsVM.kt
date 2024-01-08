package com.shopsieecommerceapp.app.modules.searchresults.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.searchresults.`data`.model.SearchResultsModel
import org.koin.core.KoinComponent

class SearchResultsVM : ViewModel(), KoinComponent {
  val searchResultsModel: MutableLiveData<SearchResultsModel> =
      MutableLiveData(SearchResultsModel())

  var navArguments: Bundle? = null
}
