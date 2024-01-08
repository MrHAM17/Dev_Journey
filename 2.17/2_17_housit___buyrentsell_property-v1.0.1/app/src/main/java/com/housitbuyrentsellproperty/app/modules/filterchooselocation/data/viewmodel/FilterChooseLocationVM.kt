package com.housitbuyrentsellproperty.app.modules.filterchooselocation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.filterchooselocation.`data`.model.FilterChooseLocationModel
import org.koin.core.KoinComponent

class FilterChooseLocationVM : ViewModel(), KoinComponent {
  val filterChooseLocationModel: MutableLiveData<FilterChooseLocationModel> =
      MutableLiveData(FilterChooseLocationModel())

  var navArguments: Bundle? = null
}
