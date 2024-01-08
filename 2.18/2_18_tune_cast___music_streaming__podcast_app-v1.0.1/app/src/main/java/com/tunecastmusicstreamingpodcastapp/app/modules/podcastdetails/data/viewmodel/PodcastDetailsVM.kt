package com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.`data`.model.PodcastDetailsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.`data`.model.PodcastdetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PodcastDetailsVM : ViewModel(), KoinComponent {
  val podcastDetailsModel: MutableLiveData<PodcastDetailsModel> =
      MutableLiveData(PodcastDetailsModel())

  var navArguments: Bundle? = null

  val podcastDetailsList: MutableLiveData<MutableList<PodcastdetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
