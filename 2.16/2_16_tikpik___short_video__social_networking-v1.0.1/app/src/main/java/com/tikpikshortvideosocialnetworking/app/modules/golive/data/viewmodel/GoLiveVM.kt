package com.tikpikshortvideosocialnetworking.app.modules.golive.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.golive.`data`.model.GoLiveModel
import org.koin.core.KoinComponent

class GoLiveVM : ViewModel(), KoinComponent {
  val goLiveModel: MutableLiveData<GoLiveModel> = MutableLiveData(GoLiveModel())

  var navArguments: Bundle? = null
}
