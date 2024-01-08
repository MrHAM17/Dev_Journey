package com.housitbuyrentsellproperty.app.modules.locationfill.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.locationfill.`data`.model.LocationFillModel
import org.koin.core.KoinComponent

class LocationFillVM : ViewModel(), KoinComponent {
  val locationFillModel: MutableLiveData<LocationFillModel> = MutableLiveData(LocationFillModel())

  var navArguments: Bundle? = null
}
