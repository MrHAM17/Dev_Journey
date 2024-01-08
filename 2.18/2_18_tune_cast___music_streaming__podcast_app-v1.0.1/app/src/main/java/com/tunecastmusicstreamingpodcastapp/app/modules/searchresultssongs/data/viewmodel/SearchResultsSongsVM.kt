package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.model.SearchResultsSongsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultssongs.`data`.model.SearchresultssongsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultsSongsVM : ViewModel(), KoinComponent {
  val searchResultsSongsModel: MutableLiveData<SearchResultsSongsModel> =
      MutableLiveData(SearchResultsSongsModel())

  var navArguments: Bundle? = null

  val searchResultsSongsList: MutableLiveData<MutableList<SearchresultssongsRowModel>> =
      MutableLiveData(mutableListOf())
}
