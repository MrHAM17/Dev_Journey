package com.fashionistaecommerceapp.app.modules.onbordingthree.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.onbordingthree.`data`.model.OnbordingThreeModel
import org.koin.core.KoinComponent

class OnbordingThreeVM : ViewModel(), KoinComponent {
  val onbordingThreeModel: MutableLiveData<OnbordingThreeModel> =
      MutableLiveData(OnbordingThreeModel())

  var navArguments: Bundle? = null
}
