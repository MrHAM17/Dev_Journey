package com.housitbuyrentsellproperty.app.modules.deleteconfirmation.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.deleteconfirmation.`data`.model.DeleteConfirmationModel
import org.koin.core.KoinComponent

class DeleteConfirmationVM : ViewModel(), KoinComponent {
  val deleteConfirmationModel: MutableLiveData<DeleteConfirmationModel> =
      MutableLiveData(DeleteConfirmationModel())

  var navArguments: Bundle? = null
}
