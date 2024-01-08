package com.comforthotelbookingapp.app.modules.forgotpassword.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.forgotpassword.`data`.model.ForgotPasswordModel
import com.comforthotelbookingapp.app.modules.forgotpassword.`data`.model.ForgotpasswordRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ForgotPasswordVM : ViewModel(), KoinComponent {
  val forgotPasswordModel: MutableLiveData<ForgotPasswordModel> =
      MutableLiveData(ForgotPasswordModel())

  var navArguments: Bundle? = null

  val forgotPasswordList: MutableLiveData<MutableList<ForgotpasswordRowModel>> =
      MutableLiveData(mutableListOf())
}
