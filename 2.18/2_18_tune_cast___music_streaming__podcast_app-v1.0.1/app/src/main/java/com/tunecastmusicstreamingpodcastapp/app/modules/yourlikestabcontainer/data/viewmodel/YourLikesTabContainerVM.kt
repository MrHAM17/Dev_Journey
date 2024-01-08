package com.tunecastmusicstreamingpodcastapp.app.modules.yourlikestabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikestabcontainer.`data`.model.YourLikesTabContainerModel
import org.koin.core.KoinComponent

class YourLikesTabContainerVM : ViewModel(), KoinComponent {
  val yourLikesTabContainerModel: MutableLiveData<YourLikesTabContainerModel> =
      MutableLiveData(YourLikesTabContainerModel())

  var navArguments: Bundle? = null
}
