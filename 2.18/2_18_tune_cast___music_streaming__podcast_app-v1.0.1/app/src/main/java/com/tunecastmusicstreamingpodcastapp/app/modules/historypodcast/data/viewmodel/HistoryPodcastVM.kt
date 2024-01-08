package com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.`data`.model.HistoryPodcastModel
import com.tunecastmusicstreamingpodcastapp.app.modules.historypodcast.`data`.model.HistorypodcastRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HistoryPodcastVM : ViewModel(), KoinComponent {
  val historyPodcastModel: MutableLiveData<HistoryPodcastModel> =
      MutableLiveData(HistoryPodcastModel())

  var navArguments: Bundle? = null

  val historyPodcastList: MutableLiveData<MutableList<HistorypodcastRowModel>> =
      MutableLiveData(mutableListOf())
}
