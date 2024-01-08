package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordfilledotp.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordfilledotp.`data`.model.ForgotPasswordFilledOtpModel
import org.koin.core.KoinComponent

class ForgotPasswordFilledOtpVM : ViewModel(), KoinComponent {
  val forgotPasswordFilledOtpModel: MutableLiveData<ForgotPasswordFilledOtpModel> =
      MutableLiveData(ForgotPasswordFilledOtpModel())

  var navArguments: Bundle? = null
}
