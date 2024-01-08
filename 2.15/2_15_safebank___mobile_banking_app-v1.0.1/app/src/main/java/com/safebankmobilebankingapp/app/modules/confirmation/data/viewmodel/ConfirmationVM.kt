package com.safebankmobilebankingapp.app.modules.confirmation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.confirmation.`data`.model.ConfirmationModel
import org.koin.core.KoinComponent

class ConfirmationVM : ViewModel(), KoinComponent {
  val confirmationModel: MutableLiveData<ConfirmationModel> = MutableLiveData(ConfirmationModel())

  var navArguments: Bundle? = null
}
