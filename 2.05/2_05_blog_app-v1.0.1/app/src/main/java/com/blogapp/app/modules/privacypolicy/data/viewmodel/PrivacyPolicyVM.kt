package com.blogapp.app.modules.privacypolicy.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.privacypolicy.`data`.model.PrivacyPolicyModel
import org.koin.core.KoinComponent

class PrivacyPolicyVM : ViewModel(), KoinComponent {
  val privacyPolicyModel: MutableLiveData<PrivacyPolicyModel> =
      MutableLiveData(PrivacyPolicyModel())

  var navArguments: Bundle? = null
}
