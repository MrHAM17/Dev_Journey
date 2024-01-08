package com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.`data`.model.NewPlaylistModel
import com.tunecastmusicstreamingpodcastapp.app.modules.newplaylist.`data`.model.SpinnerEyeModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NewPlaylistVM : ViewModel(), KoinComponent {
  val newPlaylistModel: MutableLiveData<NewPlaylistModel> = MutableLiveData(NewPlaylistModel())

  var navArguments: Bundle? = null

  val spinnerEyeList: MutableLiveData<MutableList<SpinnerEyeModel>> = MutableLiveData()
}
