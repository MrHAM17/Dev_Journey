package com.musicplayer.app.modules.albumdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.albumdetails.`data`.model.AlbumDetailsModel
import com.musicplayer.app.modules.albumdetails.`data`.model.SongslistRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AlbumDetailsVM : ViewModel(), KoinComponent {
  val albumDetailsModel: MutableLiveData<AlbumDetailsModel> = MutableLiveData(AlbumDetailsModel())

  var navArguments: Bundle? = null

  val songsListList: MutableLiveData<MutableList<SongslistRowModel>> =
      MutableLiveData(mutableListOf())
}
