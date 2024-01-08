package com.housitbuyrentsellproperty.app.modules.searchresult.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.searchresult.`data`.model.SearchResultModel
import com.housitbuyrentsellproperty.app.modules.searchresult.`data`.model.SearchresultRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultVM : ViewModel(), KoinComponent {
  val searchResultModel: MutableLiveData<SearchResultModel> = MutableLiveData(SearchResultModel())

  var navArguments: Bundle? = null

  val searchResultList: MutableLiveData<MutableList<SearchresultRowModel>> =
      MutableLiveData(mutableListOf())
}
