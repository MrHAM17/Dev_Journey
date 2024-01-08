package com.tunecastmusicstreamingpodcastapp.app.modules.songsnotifications.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SongsNotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNewMusicRelease: String? =
      MyApp.getInstance().resources.getString(R.string.msg_new_music_release)

)
