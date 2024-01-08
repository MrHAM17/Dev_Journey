package com.fashionistaecommerceapp.app.modules.signup.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.fashionistaecommerceapp.app.appcomponents.utility.PreferenceHelper
import com.fashionistaecommerceapp.app.constants.user
import com.fashionistaecommerceapp.app.modules.signup.`data`.model.SignUpModel
import com.fashionistaecommerceapp.app.network.models.createregister.CreateRegisterRequest
import com.fashionistaecommerceapp.app.network.models.createregister.CreateRegisterResponse
import com.fashionistaecommerceapp.app.network.repository.NetworkRepository
import com.fashionistaecommerceapp.app.network.resources.Response
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import kotlin.Boolean
import kotlin.Unit
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class SignUpVM : ViewModel(), KoinComponent {
  val signUpModel: MutableLiveData<SignUpModel> = MutableLiveData(SignUpModel())


  var navArguments: Bundle? = null


  val progressLiveData: MutableLiveData<Boolean> = MutableLiveData<Boolean>()


  private val networkRepository: NetworkRepository by inject()

  val createRegisterLiveData: MutableLiveData<Response<CreateRegisterResponse>> =
      MutableLiveData<Response<CreateRegisterResponse>>()


  private val prefs: PreferenceHelper by inject()

  lateinit var googleAuthResponse: GoogleSignInAccount

  fun callCreateRegisterApi(): Unit {
    viewModelScope.launch {
      progressLiveData.postValue(true)
      createRegisterLiveData.postValue(
      networkRepository.createRegister(
      createRegisterRequest = CreateRegisterRequest(
      role = user.ROLE)
      )
      )
      progressLiveData.postValue(false)
    }
  }

  fun bindCreateRegisterResponse(response: CreateRegisterResponse): Unit {
    val signUpModelValue = signUpModel.value ?:SignUpModel()
    prefs.setId(response.data?.id)
    signUpModel.value = signUpModelValue
  }
}
