package com.housitbuyrentsellproperty.app.modules.emptymap.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.emptymap.`data`.model.EmptyMapModel
import org.koin.core.KoinComponent

class EmptyMapVM : ViewModel(), KoinComponent {
  val emptyMapModel: MutableLiveData<EmptyMapModel> = MutableLiveData(EmptyMapModel())

  var navArguments: Bundle? = null
}
