package com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.model.PodcastsNotificationsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.model.PodcastsnotificationsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PodcastsNotificationsVM : ViewModel(), KoinComponent {
  val podcastsNotificationsModel: MutableLiveData<PodcastsNotificationsModel> =
      MutableLiveData(PodcastsNotificationsModel())

  var navArguments: Bundle? = null

  val podcastsNotificationsList: MutableLiveData<MutableList<PodcastsnotificationsRowModel>> =
      MutableLiveData(mutableListOf())
}
