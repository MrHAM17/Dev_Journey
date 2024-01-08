package com.jusplaymoviestreamingapp.app.modules.homerecentlywatchedcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatchedcontainer.`data`.model.HomeRecentlyWatchedContainerModel
import org.koin.core.KoinComponent

class HomeRecentlyWatchedContainerVM : ViewModel(), KoinComponent {
  val homeRecentlyWatchedContainerModel: MutableLiveData<HomeRecentlyWatchedContainerModel> =
      MutableLiveData(HomeRecentlyWatchedContainerModel())

  var navArguments: Bundle? = null
}
