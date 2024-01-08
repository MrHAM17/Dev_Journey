package com.housitbuyrentsellproperty.app.modules.view.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import org.koin.core.KoinComponent

class ViewVM : ViewModel(), KoinComponent {
  val viewModel:
      MutableLiveData<com.housitbuyrentsellproperty.app.modules.view.`data`.model.ViewModel> =
      MutableLiveData(ViewModel())

  var navArguments: Bundle? = null
}
