package com.tunecastmusicstreamingpodcastapp.app.modules.podcastsnotifications.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PodcastsNotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNewPodcastsRelease: String? =
      MyApp.getInstance().resources.getString(R.string.msg_new_podcasts_release)

)
