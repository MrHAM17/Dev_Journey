package com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.model.SearchResultsSoundsModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.model.SearchresultssoundsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultsSoundsVM : ViewModel(), KoinComponent {
  val searchResultsSoundsModel: MutableLiveData<SearchResultsSoundsModel> =
      MutableLiveData(SearchResultsSoundsModel())

  var navArguments: Bundle? = null

  val searchresultssoundsList: MutableLiveData<MutableList<SearchresultssoundsRowModel>> =
      MutableLiveData(mutableListOf())
}
