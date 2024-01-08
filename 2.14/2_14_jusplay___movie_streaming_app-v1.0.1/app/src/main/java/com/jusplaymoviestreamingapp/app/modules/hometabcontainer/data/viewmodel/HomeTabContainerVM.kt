package com.jusplaymoviestreamingapp.app.modules.hometabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.hometabcontainer.`data`.model.HomeTabContainerModel
import org.koin.core.KoinComponent

class HomeTabContainerVM : ViewModel(), KoinComponent {
  val homeTabContainerModel: MutableLiveData<HomeTabContainerModel> =
      MutableLiveData(HomeTabContainerModel())

  var navArguments: Bundle? = null
}
