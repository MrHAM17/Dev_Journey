package com.housitbuyrentsellproperty.app.modules.locationempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.locationempty.`data`.model.LocationEmptyModel
import org.koin.core.KoinComponent

class LocationEmptyVM : ViewModel(), KoinComponent {
  val locationEmptyModel: MutableLiveData<LocationEmptyModel> =
      MutableLiveData(LocationEmptyModel())

  var navArguments: Bundle? = null
}
