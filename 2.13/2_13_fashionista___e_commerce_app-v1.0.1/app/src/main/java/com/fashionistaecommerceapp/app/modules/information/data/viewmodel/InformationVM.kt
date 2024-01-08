package com.fashionistaecommerceapp.app.modules.information.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.information.`data`.model.InformationModel
import org.koin.core.KoinComponent

class InformationVM : ViewModel(), KoinComponent {
  val informationModel: MutableLiveData<InformationModel> = MutableLiveData(InformationModel())

  var navArguments: Bundle? = null
}
