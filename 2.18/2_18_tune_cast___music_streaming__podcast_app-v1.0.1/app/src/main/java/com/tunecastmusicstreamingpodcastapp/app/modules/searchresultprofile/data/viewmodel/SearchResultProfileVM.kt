package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.FollowingRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.FortyfiveRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.SearchResultProfileModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultProfileVM : ViewModel(), KoinComponent {
  val searchResultProfileModel: MutableLiveData<SearchResultProfileModel> =
      MutableLiveData(SearchResultProfileModel())

  var navArguments: Bundle? = null

  val fortyFiveList: MutableLiveData<MutableList<FortyfiveRowModel>> =
      MutableLiveData(mutableListOf())

  val followingList: MutableLiveData<MutableList<FollowingRowModel>> =
      MutableLiveData(mutableListOf())
}
