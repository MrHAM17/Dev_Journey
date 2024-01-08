package com.vertexrealestateapp.app.modules.homelistingdraw.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.homelistingdraw.`data`.model.HomeListingDrawModel
import org.koin.core.KoinComponent

class HomeListingDrawVM : ViewModel(), KoinComponent {
  val homeListingDrawModel: MutableLiveData<HomeListingDrawModel> =
      MutableLiveData(HomeListingDrawModel())

  var navArguments: Bundle? = null
}
