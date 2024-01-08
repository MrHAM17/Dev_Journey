package com.tunecastmusicstreamingpodcastapp.app.modules.songplay.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.`data`.model.SongPlayModel
import org.koin.core.KoinComponent

class SongPlayVM : ViewModel(), KoinComponent {
  val songPlayModel: MutableLiveData<SongPlayModel> = MutableLiveData(SongPlayModel())

  var navArguments: Bundle? = null
}
