package com.housitbuyrentsellproperty.app.modules.viewonmap.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.viewonmap.`data`.model.ViewOnMapModel
import org.koin.core.KoinComponent

class ViewOnMapVM : ViewModel(), KoinComponent {
  val viewOnMapModel: MutableLiveData<ViewOnMapModel> = MutableLiveData(ViewOnMapModel())

  var navArguments: Bundle? = null
}
