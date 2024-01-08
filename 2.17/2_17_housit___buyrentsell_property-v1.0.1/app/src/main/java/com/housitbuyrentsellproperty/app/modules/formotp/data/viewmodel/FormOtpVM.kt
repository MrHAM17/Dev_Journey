package com.housitbuyrentsellproperty.app.modules.formotp.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.formotp.`data`.model.FormOtpModel
import org.koin.core.KoinComponent

class FormOtpVM : ViewModel(), KoinComponent {
  val formOtpModel: MutableLiveData<FormOtpModel> = MutableLiveData(FormOtpModel())

  var navArguments: Bundle? = null
}
