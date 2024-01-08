package com.hiredjobsearch.app.modules.privacy.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.privacy.`data`.model.PrivacyModel
import org.koin.core.KoinComponent

class PrivacyVM : ViewModel(), KoinComponent {
  val privacyModel: MutableLiveData<PrivacyModel> = MutableLiveData(PrivacyModel())

  var navArguments: Bundle? = null
}
