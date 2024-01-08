package com.vertexrealestateapp.app.modules.homelisting.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.homelisting.`data`.model.HomeListingModel
import org.koin.core.KoinComponent

class HomeListingVM : ViewModel(), KoinComponent {
  val homeListingModel: MutableLiveData<HomeListingModel> = MutableLiveData(HomeListingModel())

  var navArguments: Bundle? = null
}
