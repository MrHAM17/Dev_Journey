package com.vertexrealestateapp.app.modules.homelistingsatelite.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.homelistingsatelite.`data`.model.HomeListingSateliteModel
import org.koin.core.KoinComponent

class HomeListingSateliteVM : ViewModel(), KoinComponent {
  val homeListingSateliteModel: MutableLiveData<HomeListingSateliteModel> =
      MutableLiveData(HomeListingSateliteModel())

  var navArguments: Bundle? = null
}
