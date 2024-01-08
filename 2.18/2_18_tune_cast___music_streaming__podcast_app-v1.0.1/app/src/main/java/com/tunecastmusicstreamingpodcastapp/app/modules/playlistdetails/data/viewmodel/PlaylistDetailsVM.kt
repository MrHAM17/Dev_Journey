package com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.model.PlaylistDetailsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playlistdetails.`data`.model.PlaylistdetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PlaylistDetailsVM : ViewModel(), KoinComponent {
  val playlistDetailsModel: MutableLiveData<PlaylistDetailsModel> =
      MutableLiveData(PlaylistDetailsModel())

  var navArguments: Bundle? = null

  val playlistDetailsList: MutableLiveData<MutableList<PlaylistdetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
