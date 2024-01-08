package com.comforthotelbookingapp.app.modules.homescreentabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.homescreentabcontainer.`data`.model.HomeScreenTabContainerModel
import org.koin.core.KoinComponent

class HomeScreenTabContainerVM : ViewModel(), KoinComponent {
  val homeScreenTabContainerModel: MutableLiveData<HomeScreenTabContainerModel> =
      MutableLiveData(HomeScreenTabContainerModel())

  var navArguments: Bundle? = null
}
