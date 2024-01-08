package com.housitbuyrentsellproperty.app.modules.locationchooselocation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.locationchooselocation.`data`.model.LocationChooseLocationModel
import org.koin.core.KoinComponent

class LocationChooseLocationVM : ViewModel(), KoinComponent {
  val locationChooseLocationModel: MutableLiveData<LocationChooseLocationModel> =
      MutableLiveData(LocationChooseLocationModel())

  var navArguments: Bundle? = null
}
