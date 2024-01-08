package com.vertexrealestateapp.app.modules.filtertabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.filtertabcontainer.`data`.model.FilterTabContainerModel
import org.koin.core.KoinComponent

class FilterTabContainerVM : ViewModel(), KoinComponent {
  val filterTabContainerModel: MutableLiveData<FilterTabContainerModel> =
      MutableLiveData(FilterTabContainerModel())

  var navArguments: Bundle? = null
}
