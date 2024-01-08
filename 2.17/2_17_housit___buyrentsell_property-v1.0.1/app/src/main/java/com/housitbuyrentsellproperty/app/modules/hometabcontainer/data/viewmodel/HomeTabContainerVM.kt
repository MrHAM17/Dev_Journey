package com.housitbuyrentsellproperty.app.modules.hometabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.hometabcontainer.`data`.model.HomeTabContainerModel
import com.housitbuyrentsellproperty.app.modules.hometabcontainer.`data`.model.SpinnerButtonLocationModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeTabContainerVM : ViewModel(), KoinComponent {
  val homeTabContainerModel: MutableLiveData<HomeTabContainerModel> =
      MutableLiveData(HomeTabContainerModel())

  var navArguments: Bundle? = null

  val spinnerButtonLocationList: MutableLiveData<MutableList<SpinnerButtonLocationModel>> =
      MutableLiveData()
}
