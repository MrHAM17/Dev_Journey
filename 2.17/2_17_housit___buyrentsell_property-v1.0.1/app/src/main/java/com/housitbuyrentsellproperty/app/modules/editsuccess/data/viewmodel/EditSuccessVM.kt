package com.housitbuyrentsellproperty.app.modules.editsuccess.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.editsuccess.`data`.model.EditSuccessModel
import org.koin.core.KoinComponent

class EditSuccessVM : ViewModel(), KoinComponent {
  val editSuccessModel: MutableLiveData<EditSuccessModel> = MutableLiveData(EditSuccessModel())

  var navArguments: Bundle? = null
}
