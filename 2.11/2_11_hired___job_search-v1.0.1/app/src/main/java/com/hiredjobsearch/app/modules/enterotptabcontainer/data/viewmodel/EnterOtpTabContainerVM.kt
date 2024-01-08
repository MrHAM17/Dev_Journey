package com.hiredjobsearch.app.modules.enterotptabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.enterotptabcontainer.`data`.model.EnterOtpTabContainerModel
import org.koin.core.KoinComponent

class EnterOtpTabContainerVM : ViewModel(), KoinComponent {
  val enterOtpTabContainerModel: MutableLiveData<EnterOtpTabContainerModel> =
      MutableLiveData(EnterOtpTabContainerModel())

  var navArguments: Bundle? = null
}
