package com.tunecastmusicstreamingpodcastapp.app.modules.songs.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songs.`data`.model.SongsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songs.`data`.model.SongsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SongsVM : ViewModel(), KoinComponent {
  val songsModel: MutableLiveData<SongsModel> = MutableLiveData(SongsModel())

  var navArguments: Bundle? = null

  val songsList: MutableLiveData<MutableList<SongsRowModel>> = MutableLiveData(mutableListOf())
}
