package com.tunecastmusicstreamingpodcastapp.app.modules.audiovideo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.audiovideo.`data`.model.AudioVideoModel
import org.koin.core.KoinComponent

class AudioVideoVM : ViewModel(), KoinComponent {
  val audioVideoModel: MutableLiveData<AudioVideoModel> = MutableLiveData(AudioVideoModel())

  var navArguments: Bundle? = null
}
