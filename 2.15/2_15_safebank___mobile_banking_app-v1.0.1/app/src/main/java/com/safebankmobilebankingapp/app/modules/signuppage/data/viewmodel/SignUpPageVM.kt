package com.safebankmobilebankingapp.app.modules.signuppage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.signuppage.`data`.model.SignUpPageModel
import com.safebankmobilebankingapp.app.modules.signuppage.`data`.model.SpinnerJanModel
import com.safebankmobilebankingapp.app.modules.signuppage.`data`.model.SpinnerUnitedEstateModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SignUpPageVM : ViewModel(), KoinComponent {
  val signUpPageModel: MutableLiveData<SignUpPageModel> = MutableLiveData(SignUpPageModel())

  var navArguments: Bundle? = null

  val spinnerJanList: MutableLiveData<MutableList<SpinnerJanModel>> = MutableLiveData()

  val spinnerUnitedEstateList: MutableLiveData<MutableList<SpinnerUnitedEstateModel>> =
      MutableLiveData()
}
