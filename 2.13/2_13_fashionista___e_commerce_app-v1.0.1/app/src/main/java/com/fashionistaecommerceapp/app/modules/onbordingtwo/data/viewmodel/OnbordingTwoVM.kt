package com.fashionistaecommerceapp.app.modules.onbordingtwo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.onbordingtwo.`data`.model.OnbordingTwoModel
import org.koin.core.KoinComponent

class OnbordingTwoVM : ViewModel(), KoinComponent {
  val onbordingTwoModel: MutableLiveData<OnbordingTwoModel> = MutableLiveData(OnbordingTwoModel())

  var navArguments: Bundle? = null
}
