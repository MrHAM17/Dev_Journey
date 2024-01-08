package com.vertexrealestateapp.app.modules.addnewpropertydecsription.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertydecsription.`data`.model.AddNewPropertyDecsriptionModel
import org.koin.core.KoinComponent

class AddNewPropertyDecsriptionVM : ViewModel(), KoinComponent {
  val addNewPropertyDecsriptionModel: MutableLiveData<AddNewPropertyDecsriptionModel> =
      MutableLiveData(AddNewPropertyDecsriptionModel())

  var navArguments: Bundle? = null
}
