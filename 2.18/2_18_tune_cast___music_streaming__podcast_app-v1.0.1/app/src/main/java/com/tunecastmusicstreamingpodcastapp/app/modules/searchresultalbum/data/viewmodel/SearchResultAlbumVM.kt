package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.model.SearchResultAlbumModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultalbum.`data`.model.SearchresultalbumRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultAlbumVM : ViewModel(), KoinComponent {
  val searchResultAlbumModel: MutableLiveData<SearchResultAlbumModel> =
      MutableLiveData(SearchResultAlbumModel())

  var navArguments: Bundle? = null

  val searchResultAlbumList: MutableLiveData<MutableList<SearchresultalbumRowModel>> =
      MutableLiveData(mutableListOf())
}
