package com.fashionistaecommerceapp.app.modules.complete.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.complete.`data`.model.CompleteModel
import org.koin.core.KoinComponent

class CompleteVM : ViewModel(), KoinComponent {
  val completeModel: MutableLiveData<CompleteModel> = MutableLiveData(CompleteModel())

  var navArguments: Bundle? = null
}
