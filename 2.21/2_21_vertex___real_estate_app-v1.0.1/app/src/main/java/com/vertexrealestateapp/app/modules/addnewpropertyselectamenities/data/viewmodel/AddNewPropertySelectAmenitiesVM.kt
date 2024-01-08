package com.vertexrealestateapp.app.modules.addnewpropertyselectamenities.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.addnewpropertyselectamenities.`data`.model.AddNewPropertySelectAmenitiesModel
import org.koin.core.KoinComponent

class AddNewPropertySelectAmenitiesVM : ViewModel(), KoinComponent {
  val addNewPropertySelectAmenitiesModel: MutableLiveData<AddNewPropertySelectAmenitiesModel> =
      MutableLiveData(AddNewPropertySelectAmenitiesModel())

  var navArguments: Bundle? = null
}
