package com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.model.SearchResultsVideosModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.model.SearchresultsvideosRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultsVideosVM : ViewModel(), KoinComponent {
  val searchResultsVideosModel: MutableLiveData<SearchResultsVideosModel> =
      MutableLiveData(SearchResultsVideosModel())

  var navArguments: Bundle? = null

  val searchresultsvideosList: MutableLiveData<MutableList<SearchresultsvideosRowModel>> =
      MutableLiveData(mutableListOf())
}
