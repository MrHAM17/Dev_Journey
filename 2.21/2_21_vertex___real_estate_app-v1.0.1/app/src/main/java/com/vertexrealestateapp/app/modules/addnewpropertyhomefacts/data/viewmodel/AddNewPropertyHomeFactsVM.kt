package com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.`data`.model.AddNewPropertyHomeFactsModel
import com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.`data`.model.SpinnerInputFieldsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewPropertyHomeFactsVM : ViewModel(), KoinComponent {
  val addNewPropertyHomeFactsModel: MutableLiveData<AddNewPropertyHomeFactsModel> =
      MutableLiveData(AddNewPropertyHomeFactsModel())

  var navArguments: Bundle? = null

  val spinnerInputFieldsList: MutableLiveData<MutableList<SpinnerInputFieldsModel>> =
      MutableLiveData()
}
