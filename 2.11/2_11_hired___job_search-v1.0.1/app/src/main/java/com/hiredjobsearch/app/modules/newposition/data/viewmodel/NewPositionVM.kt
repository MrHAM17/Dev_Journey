package com.hiredjobsearch.app.modules.newposition.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.newposition.`data`.model.NewPositionModel
import com.hiredjobsearch.app.modules.newposition.`data`.model.SpinnerCheckmarkModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NewPositionVM : ViewModel(), KoinComponent {
  val newPositionModel: MutableLiveData<NewPositionModel> = MutableLiveData(NewPositionModel())

  var navArguments: Bundle? = null

  val spinnerCheckmarkList: MutableLiveData<MutableList<SpinnerCheckmarkModel>> = MutableLiveData()
}
