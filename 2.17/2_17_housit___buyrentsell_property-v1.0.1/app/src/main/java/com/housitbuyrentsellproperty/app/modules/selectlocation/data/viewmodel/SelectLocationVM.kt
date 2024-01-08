package com.housitbuyrentsellproperty.app.modules.selectlocation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.selectlocation.`data`.model.SelectLocationModel
import org.koin.core.KoinComponent

class SelectLocationVM : ViewModel(), KoinComponent {
  val selectLocationModel: MutableLiveData<SelectLocationModel> =
      MutableLiveData(SelectLocationModel())

  var navArguments: Bundle? = null
}
