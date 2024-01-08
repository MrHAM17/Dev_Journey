package com.tunecastmusicstreamingpodcastapp.app.modules.playlists.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlists.`data`.model.PlaylistsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlists.`data`.model.PlaylistsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PlaylistsVM : ViewModel(), KoinComponent {
  val playlistsModel: MutableLiveData<PlaylistsModel> = MutableLiveData(PlaylistsModel())

  var navArguments: Bundle? = null

  val playlistsList: MutableLiveData<MutableList<PlaylistsRowModel>> =
      MutableLiveData(mutableListOf())
}
