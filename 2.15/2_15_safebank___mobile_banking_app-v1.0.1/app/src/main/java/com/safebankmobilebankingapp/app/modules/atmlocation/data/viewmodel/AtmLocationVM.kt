package com.safebankmobilebankingapp.app.modules.atmlocation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.atmlocation.`data`.model.AtmLocationModel
import org.koin.core.KoinComponent

class AtmLocationVM : ViewModel(), KoinComponent {
  val atmLocationModel: MutableLiveData<AtmLocationModel> = MutableLiveData(AtmLocationModel())

  var navArguments: Bundle? = null
}
