package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.model.SearchResultPlaylistModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultplaylist.`data`.model.SearchresultplaylistRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultPlaylistVM : ViewModel(), KoinComponent {
  val searchResultPlaylistModel: MutableLiveData<SearchResultPlaylistModel> =
      MutableLiveData(SearchResultPlaylistModel())

  var navArguments: Bundle? = null

  val searchResultPlaylistList: MutableLiveData<MutableList<SearchresultplaylistRowModel>> =
      MutableLiveData(mutableListOf())
}
