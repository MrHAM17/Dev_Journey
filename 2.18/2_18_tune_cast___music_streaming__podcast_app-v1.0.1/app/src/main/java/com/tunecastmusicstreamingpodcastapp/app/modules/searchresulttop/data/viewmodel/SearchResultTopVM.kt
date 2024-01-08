package com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.FollowRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.SearchResultTopModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.TeenagedreamRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultTopVM : ViewModel(), KoinComponent {
  val searchResultTopModel: MutableLiveData<SearchResultTopModel> =
      MutableLiveData(SearchResultTopModel())

  var navArguments: Bundle? = null

  val followList: MutableLiveData<MutableList<FollowRowModel>> = MutableLiveData(mutableListOf())

  val teenageDreamList: MutableLiveData<MutableList<TeenagedreamRowModel>> =
      MutableLiveData(mutableListOf())
}
