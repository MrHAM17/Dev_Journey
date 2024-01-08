package com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.model.AlbumsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.model.AlbumsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AlbumsVM : ViewModel(), KoinComponent {
  val albumsModel: MutableLiveData<AlbumsModel> = MutableLiveData(AlbumsModel())

  var navArguments: Bundle? = null

  val albumsList: MutableLiveData<MutableList<AlbumsRowModel>> = MutableLiveData(mutableListOf())
}
