package com.vertexrealestateapp.app.modules.confirmrequest.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.confirmrequest.`data`.model.ConfirmRequestModel
import org.koin.core.KoinComponent

class ConfirmRequestVM : ViewModel(), KoinComponent {
  val confirmRequestModel: MutableLiveData<ConfirmRequestModel> =
      MutableLiveData(ConfirmRequestModel())

  var navArguments: Bundle? = null
}
