package com.vertexrealestateapp.app.modules.addnewpropertyaddress.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertyaddress.`data`.model.AddNewPropertyAddressModel
import com.vertexrealestateapp.app.modules.addnewpropertyaddress.`data`.model.SpinnerInputFieldsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddNewPropertyAddressVM : ViewModel(), KoinComponent {
  val addNewPropertyAddressModel: MutableLiveData<AddNewPropertyAddressModel> =
      MutableLiveData(AddNewPropertyAddressModel())

  var navArguments: Bundle? = null

  val spinnerInputFieldsList: MutableLiveData<MutableList<SpinnerInputFieldsModel>> =
      MutableLiveData()
}
