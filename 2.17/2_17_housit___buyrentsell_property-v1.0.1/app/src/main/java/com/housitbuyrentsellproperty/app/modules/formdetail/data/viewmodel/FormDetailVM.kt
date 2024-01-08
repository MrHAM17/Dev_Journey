package com.housitbuyrentsellproperty.app.modules.formdetail.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.formdetail.`data`.model.FormDetailModel
import org.koin.core.KoinComponent

class FormDetailVM : ViewModel(), KoinComponent {
  val formDetailModel: MutableLiveData<FormDetailModel> = MutableLiveData(FormDetailModel())

  var navArguments: Bundle? = null
}
