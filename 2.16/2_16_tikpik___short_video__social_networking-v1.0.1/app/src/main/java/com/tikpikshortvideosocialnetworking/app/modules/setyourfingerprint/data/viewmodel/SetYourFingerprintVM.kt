package com.tikpikshortvideosocialnetworking.app.modules.setyourfingerprint.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.setyourfingerprint.`data`.model.SetYourFingerprintModel
import org.koin.core.KoinComponent

class SetYourFingerprintVM : ViewModel(), KoinComponent {
  val setYourFingerprintModel: MutableLiveData<SetYourFingerprintModel> =
      MutableLiveData(SetYourFingerprintModel())

  var navArguments: Bundle? = null
}
