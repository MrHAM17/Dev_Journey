package com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordmethods.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordmethods.`data`.model.ForgotPasswordMethodsModel
import org.koin.core.KoinComponent

class ForgotPasswordMethodsVM : ViewModel(), KoinComponent {
  val forgotPasswordMethodsModel: MutableLiveData<ForgotPasswordMethodsModel> =
      MutableLiveData(ForgotPasswordMethodsModel())

  var navArguments: Bundle? = null
}
