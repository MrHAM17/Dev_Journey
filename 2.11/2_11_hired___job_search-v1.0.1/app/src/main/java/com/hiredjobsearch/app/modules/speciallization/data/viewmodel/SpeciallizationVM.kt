package com.hiredjobsearch.app.modules.speciallization.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.speciallization.`data`.model.SpeciallizationModel
import com.hiredjobsearch.app.modules.speciallization.`data`.model.SpeciallizationRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SpeciallizationVM : ViewModel(), KoinComponent {
  val speciallizationModel: MutableLiveData<SpeciallizationModel> =
      MutableLiveData(SpeciallizationModel())

  var navArguments: Bundle? = null

  val speciallizationList: MutableLiveData<MutableList<SpeciallizationRowModel>> =
      MutableLiveData(mutableListOf())
}
