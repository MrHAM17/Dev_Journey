package com.vertexrealestateapp.app.modules.verifyphonenumber.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.verifyphonenumber.`data`.model.VerifyPhoneNumberModel
import org.koin.core.KoinComponent

class VerifyPhoneNumberVM : ViewModel(), KoinComponent {
  val verifyPhoneNumberModel: MutableLiveData<VerifyPhoneNumberModel> =
      MutableLiveData(VerifyPhoneNumberModel())

  var navArguments: Bundle? = null
}
