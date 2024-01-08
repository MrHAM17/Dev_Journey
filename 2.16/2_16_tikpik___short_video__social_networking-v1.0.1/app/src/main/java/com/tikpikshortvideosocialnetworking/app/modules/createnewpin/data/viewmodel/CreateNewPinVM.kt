package com.tikpikshortvideosocialnetworking.app.modules.createnewpin.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.createnewpin.`data`.model.CreateNewPinModel
import org.koin.core.KoinComponent

class CreateNewPinVM : ViewModel(), KoinComponent {
  val createNewPinModel: MutableLiveData<CreateNewPinModel> = MutableLiveData(CreateNewPinModel())

  var navArguments: Bundle? = null
}
