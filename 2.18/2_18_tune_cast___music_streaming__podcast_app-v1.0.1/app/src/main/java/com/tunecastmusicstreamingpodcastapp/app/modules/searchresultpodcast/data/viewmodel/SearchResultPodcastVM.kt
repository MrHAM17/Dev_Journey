package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model.FiftynineRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model.Frame4RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultpodcast.`data`.model.SearchResultPodcastModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SearchResultPodcastVM : ViewModel(), KoinComponent {
  val searchResultPodcastModel: MutableLiveData<SearchResultPodcastModel> =
      MutableLiveData(SearchResultPodcastModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame4RowModel>> = MutableLiveData(mutableListOf())

  val fiftyNineList: MutableLiveData<MutableList<FiftynineRowModel>> =
      MutableLiveData(mutableListOf())
}
