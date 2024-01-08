package com.jusplaymoviestreamingapp.app.modules.episodetabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.episodetabcontainer.`data`.model.EpisodeTabContainerModel
import org.koin.core.KoinComponent

class EpisodeTabContainerVM : ViewModel(), KoinComponent {
  val episodeTabContainerModel: MutableLiveData<EpisodeTabContainerModel> =
      MutableLiveData(EpisodeTabContainerModel())

  var navArguments: Bundle? = null
}
