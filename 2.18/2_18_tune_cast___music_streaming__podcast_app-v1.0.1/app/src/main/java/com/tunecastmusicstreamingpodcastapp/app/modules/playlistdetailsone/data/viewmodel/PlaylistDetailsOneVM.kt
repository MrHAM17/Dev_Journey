package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.model.PlaylistDetailsOneModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetailsone.`data`.model.PlaylistdetailsoneRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PlaylistDetailsOneVM : ViewModel(), KoinComponent {
  val playlistDetailsOneModel: MutableLiveData<PlaylistDetailsOneModel> =
      MutableLiveData(PlaylistDetailsOneModel())

  var navArguments: Bundle? = null

  val playlistDetailsOneList: MutableLiveData<MutableList<PlaylistdetailsoneRowModel>> =
      MutableLiveData(mutableListOf())
}
