package com.comforthotelbookingapp.app.modules.createnewpassword.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.createnewpassword.`data`.model.CreateNewPasswordModel
import org.koin.core.KoinComponent

class CreateNewPasswordVM : ViewModel(), KoinComponent {
  val createNewPasswordModel: MutableLiveData<CreateNewPasswordModel> =
      MutableLiveData(CreateNewPasswordModel())

  var navArguments: Bundle? = null
}
