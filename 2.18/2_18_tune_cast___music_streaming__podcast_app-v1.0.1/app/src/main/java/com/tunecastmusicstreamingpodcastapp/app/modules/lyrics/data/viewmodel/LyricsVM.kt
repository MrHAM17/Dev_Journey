package com.tunecastmusicstreamingpodcastapp.app.modules.lyrics.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.lyrics.`data`.model.LyricsModel
import org.koin.core.KoinComponent

class LyricsVM : ViewModel(), KoinComponent {
  val lyricsModel: MutableLiveData<LyricsModel> = MutableLiveData(LyricsModel())

  var navArguments: Bundle? = null
}
