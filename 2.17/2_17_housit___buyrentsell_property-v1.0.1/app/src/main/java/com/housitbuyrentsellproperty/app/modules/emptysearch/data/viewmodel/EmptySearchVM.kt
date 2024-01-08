package com.housitbuyrentsellproperty.app.modules.emptysearch.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.emptysearch.`data`.model.EmptySearchModel
import org.koin.core.KoinComponent

class EmptySearchVM : ViewModel(), KoinComponent {
  val emptySearchModel: MutableLiveData<EmptySearchModel> = MutableLiveData(EmptySearchModel())

  var navArguments: Bundle? = null
}
