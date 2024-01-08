package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.ArtistsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.Frame3RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.PodcastsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.PodcastsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PodcastsVM : ViewModel(), KoinComponent {
  val podcastsModel: MutableLiveData<PodcastsModel> = MutableLiveData(PodcastsModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame3RowModel>> = MutableLiveData(mutableListOf())

  val artistsList: MutableLiveData<MutableList<ArtistsRowModel>> = MutableLiveData(mutableListOf())

  val podcastsList: MutableLiveData<MutableList<PodcastsRowModel>> =
      MutableLiveData(mutableListOf())
}
