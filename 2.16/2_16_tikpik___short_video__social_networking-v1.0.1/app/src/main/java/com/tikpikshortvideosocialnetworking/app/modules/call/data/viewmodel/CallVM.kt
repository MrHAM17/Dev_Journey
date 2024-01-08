package com.tikpikshortvideosocialnetworking.app.modules.call.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.call.`data`.model.CallModel
import org.koin.core.KoinComponent

class CallVM : ViewModel(), KoinComponent {
  val callModel: MutableLiveData<CallModel> = MutableLiveData(CallModel())

  var navArguments: Bundle? = null
}
