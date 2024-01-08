package com.housitbuyrentsellproperty.app.modules.filterfull.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.filterfull.`data`.model.FilterFullModel
import org.koin.core.KoinComponent

class FilterFullVM : ViewModel(), KoinComponent {
  val filterFullModel: MutableLiveData<FilterFullModel> = MutableLiveData(FilterFullModel())

  var navArguments: Bundle? = null
}
