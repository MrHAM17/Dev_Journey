package com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.model.PodcastersModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.`data`.model.PodcastersRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PodcastersVM : ViewModel(), KoinComponent {
  val podcastersModel: MutableLiveData<PodcastersModel> = MutableLiveData(PodcastersModel())

  var navArguments: Bundle? = null

  val podcastersList: MutableLiveData<MutableList<PodcastersRowModel>> =
      MutableLiveData(mutableListOf())
}
