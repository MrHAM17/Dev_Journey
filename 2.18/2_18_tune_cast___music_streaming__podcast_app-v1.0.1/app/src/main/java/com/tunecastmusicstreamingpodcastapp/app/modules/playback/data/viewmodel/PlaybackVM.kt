package com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.model.PlaybackModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.model.PlaybackRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PlaybackVM : ViewModel(), KoinComponent {
  val playbackModel: MutableLiveData<PlaybackModel> = MutableLiveData(PlaybackModel())

  var navArguments: Bundle? = null

  val playbackList: MutableLiveData<MutableList<PlaybackRowModel>> =
      MutableLiveData(mutableListOf())
}
