package com.jusplaymoviestreamingapp.app.modules.otpverification.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.otpverification.`data`.model.OtpVerificationModel
import org.koin.core.KoinComponent

class OtpVerificationVM : ViewModel(), KoinComponent {
  val otpVerificationModel: MutableLiveData<OtpVerificationModel> =
      MutableLiveData(OtpVerificationModel())

  var navArguments: Bundle? = null
}
