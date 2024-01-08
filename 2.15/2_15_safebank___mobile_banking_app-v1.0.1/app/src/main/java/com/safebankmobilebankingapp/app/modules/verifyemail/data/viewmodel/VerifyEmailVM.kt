package com.safebankmobilebankingapp.app.modules.verifyemail.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.verifyemail.`data`.model.VerifyEmailModel
import org.koin.core.KoinComponent

class VerifyEmailVM : ViewModel(), KoinComponent {
  val verifyEmailModel: MutableLiveData<VerifyEmailModel> = MutableLiveData(VerifyEmailModel())

  var navArguments: Bundle? = null
}
