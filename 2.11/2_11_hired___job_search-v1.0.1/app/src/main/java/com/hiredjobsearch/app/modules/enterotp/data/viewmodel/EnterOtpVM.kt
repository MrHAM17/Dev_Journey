package com.hiredjobsearch.app.modules.enterotp.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.enterotp.`data`.model.EnterOtpModel
import org.koin.core.KoinComponent

class EnterOtpVM : ViewModel(), KoinComponent {
  val enterOtpModel: MutableLiveData<EnterOtpModel> = MutableLiveData(EnterOtpModel())

  var navArguments: Bundle? = null
}
