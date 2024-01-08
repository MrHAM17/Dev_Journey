package com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model.AutolayouthorizontalRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model.FollowRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model.SearchResultsTopModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultsTopVM : ViewModel(), KoinComponent {
  val searchResultsTopModel: MutableLiveData<SearchResultsTopModel> =
      MutableLiveData(SearchResultsTopModel())

  var navArguments: Bundle? = null

  val followList: MutableLiveData<MutableList<FollowRowModel>> = MutableLiveData(mutableListOf())

  val autoLayoutHorizontalList: MutableLiveData<MutableList<AutolayouthorizontalRowModel>> =
      MutableLiveData(mutableListOf())
}
