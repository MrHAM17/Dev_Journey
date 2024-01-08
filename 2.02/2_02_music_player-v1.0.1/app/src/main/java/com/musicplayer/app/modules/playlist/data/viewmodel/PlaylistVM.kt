package com.musicplayer.app.modules.playlist.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.playlist.`data`.model.PlaylistModel
import com.musicplayer.app.modules.playlist.`data`.model.PlaylistRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PlaylistVM : ViewModel(), KoinComponent {
  val playlistModel: MutableLiveData<PlaylistModel> = MutableLiveData(PlaylistModel())

  var navArguments: Bundle? = null

  val playlistList: MutableLiveData<MutableList<PlaylistRowModel>> =
      MutableLiveData(mutableListOf())
}
