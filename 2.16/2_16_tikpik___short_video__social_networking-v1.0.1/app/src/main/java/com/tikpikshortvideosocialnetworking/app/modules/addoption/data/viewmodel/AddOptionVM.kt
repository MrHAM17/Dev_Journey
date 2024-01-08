package com.tikpikshortvideosocialnetworking.app.modules.addoption.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.addoption.`data`.model.AddOptionModel
import org.koin.core.KoinComponent

class AddOptionVM : ViewModel(), KoinComponent {
  val addOptionModel: MutableLiveData<AddOptionModel> = MutableLiveData(AddOptionModel())

  var navArguments: Bundle? = null
}
