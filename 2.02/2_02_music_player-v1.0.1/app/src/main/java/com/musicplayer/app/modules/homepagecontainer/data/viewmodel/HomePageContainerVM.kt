package com.musicplayer.app.modules.homepagecontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.musicplayer.app.modules.homepagecontainer.`data`.model.HomePageContainerModel
import org.koin.core.KoinComponent

class HomePageContainerVM : ViewModel(), KoinComponent {
  val homePageContainerModel: MutableLiveData<HomePageContainerModel> =
      MutableLiveData(HomePageContainerModel())

  var navArguments: Bundle? = null
}
