package com.tunecastmusicstreamingpodcastapp.app.modules.playlists.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PlaylistsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsum: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_playlist)

)
