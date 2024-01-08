package com.tunecastmusicstreamingpodcastapp.app.modules.artiststabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.artiststabcontainer.`data`.model.ArtistsTabContainerModel
import org.koin.core.KoinComponent

class ArtistsTabContainerVM : ViewModel(), KoinComponent {
  val artistsTabContainerModel: MutableLiveData<ArtistsTabContainerModel> =
      MutableLiveData(ArtistsTabContainerModel())

  var navArguments: Bundle? = null
}
