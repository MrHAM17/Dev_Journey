package com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.model.LocationDistanceModel
import com.housitbuyrentsellproperty.app.modules.locationdistance.`data`.model.LocationlistRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class LocationDistanceVM : ViewModel(), KoinComponent {
  val locationDistanceModel: MutableLiveData<LocationDistanceModel> =
      MutableLiveData(LocationDistanceModel())

  var navArguments: Bundle? = null

  val locationListList: MutableLiveData<MutableList<LocationlistRowModel>> =
      MutableLiveData(mutableListOf())
}
