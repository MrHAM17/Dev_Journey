package com.fashionistaecommerceapp.app.modules.onbordingone.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.onbordingone.`data`.model.OnbordingOneModel
import org.koin.core.KoinComponent

class OnbordingOneVM : ViewModel(), KoinComponent {
  val onbordingOneModel: MutableLiveData<OnbordingOneModel> = MutableLiveData(OnbordingOneModel())

  var navArguments: Bundle? = null
}
