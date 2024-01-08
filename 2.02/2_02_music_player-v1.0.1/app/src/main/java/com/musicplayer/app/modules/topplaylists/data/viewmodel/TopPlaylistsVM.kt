package com.musicplayer.app.modules.topplaylists.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.topplaylists.`data`.model.TopPlaylistsModel
import com.musicplayer.app.modules.topplaylists.`data`.model.TopplaylistRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopPlaylistsVM : ViewModel(), KoinComponent {
  val topPlaylistsModel: MutableLiveData<TopPlaylistsModel> = MutableLiveData(TopPlaylistsModel())

  var navArguments: Bundle? = null

  val topPlaylistList: MutableLiveData<MutableList<TopplaylistRowModel>> =
      MutableLiveData(mutableListOf())
}
