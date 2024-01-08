package com.vertexrealestateapp.app.modules.pasttours.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.pasttours.`data`.model.PastToursModel
import org.koin.core.KoinComponent

class PastToursVM : ViewModel(), KoinComponent {
  val pastToursModel: MutableLiveData<PastToursModel> = MutableLiveData(PastToursModel())

  var navArguments: Bundle? = null
}
