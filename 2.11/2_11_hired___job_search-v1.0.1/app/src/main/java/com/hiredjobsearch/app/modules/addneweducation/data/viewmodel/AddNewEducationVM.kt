package com.hiredjobsearch.app.modules.addneweducation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.addneweducation.`data`.model.AddNewEducationModel
import com.hiredjobsearch.app.modules.addneweducation.`data`.model.SpinnerFrameOneModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewEducationVM : ViewModel(), KoinComponent {
  val addNewEducationModel: MutableLiveData<AddNewEducationModel> =
      MutableLiveData(AddNewEducationModel())

  var navArguments: Bundle? = null

  val spinnerFrameOneList: MutableLiveData<MutableList<SpinnerFrameOneModel>> = MutableLiveData()
}
