package com.jusplaymoviestreamingapp.app.modules.episode.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.episode.`data`.model.EpisodeModel
import com.jusplaymoviestreamingapp.app.modules.episode.`data`.model.EpisodeRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class EpisodeVM : ViewModel(), KoinComponent {
  val episodeModel: MutableLiveData<EpisodeModel> = MutableLiveData(EpisodeModel())

  var navArguments: Bundle? = null

  val episodeList: MutableLiveData<MutableList<EpisodeRowModel>> = MutableLiveData(mutableListOf())
}
