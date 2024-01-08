package com.housitbuyrentsellproperty.app.modules.extrainformationsuccess.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.extrainformationsuccess.`data`.model.ExtraInformationSuccessModel
import org.koin.core.KoinComponent

class ExtraInformationSuccessVM : ViewModel(), KoinComponent {
  val extraInformationSuccessModel: MutableLiveData<ExtraInformationSuccessModel> =
      MutableLiveData(ExtraInformationSuccessModel())

  var navArguments: Bundle? = null
}
