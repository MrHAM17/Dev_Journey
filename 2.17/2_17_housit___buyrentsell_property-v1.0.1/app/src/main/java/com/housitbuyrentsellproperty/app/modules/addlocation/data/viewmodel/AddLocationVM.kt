package com.housitbuyrentsellproperty.app.modules.addlocation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.addlocation.`data`.model.AddLocationModel
import org.koin.core.KoinComponent

class AddLocationVM : ViewModel(), KoinComponent {
  val addLocationModel: MutableLiveData<AddLocationModel> = MutableLiveData(AddLocationModel())

  var navArguments: Bundle? = null
}
