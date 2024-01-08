package com.tunecastmusicstreamingpodcastapp.app.modules.podcastepisodedetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastepisodedetails.`data`.model.PodcastEpisodeDetailsModel
import org.koin.core.KoinComponent

class PodcastEpisodeDetailsVM : ViewModel(), KoinComponent {
  val podcastEpisodeDetailsModel: MutableLiveData<PodcastEpisodeDetailsModel> =
      MutableLiveData(PodcastEpisodeDetailsModel())

  var navArguments: Bundle? = null
}
