package com.housitbuyrentsellproperty.app.modules.extrainformationerror.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.extrainformationerror.`data`.model.ExtraInformationErrorModel
import org.koin.core.KoinComponent

class ExtraInformationErrorVM : ViewModel(), KoinComponent {
  val extraInformationErrorModel: MutableLiveData<ExtraInformationErrorModel> =
      MutableLiveData(ExtraInformationErrorModel())

  var navArguments: Bundle? = null
}
