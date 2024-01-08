package com.comforthotelbookingapp.app.modules.signin.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.comforthotelbookingapp.app.appcomponents.utility.PreferenceHelper
import com.comforthotelbookingapp.app.modules.signin.`data`.model.SignInModel
import com.comforthotelbookingapp.app.network.models.createlogin.CreateLoginRequest
import com.comforthotelbookingapp.app.network.models.createlogin.CreateLoginResponse
import com.comforthotelbookingapp.app.network.repository.NetworkRepository
import com.comforthotelbookingapp.app.network.resources.Response
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import kotlin.Boolean
import kotlin.Unit
import kotlinx.coroutines.launch
import org.json.JSONObject
import org.koin.core.KoinComponent
import org.koin.core.inject

class SignInVM : ViewModel(), KoinComponent {
  val signInModel: MutableLiveData<SignInModel> = MutableLiveData(SignInModel())


  var navArguments: Bundle? = null


  val progressLiveData: MutableLiveData<Boolean> = MutableLiveData<Boolean>()


  private val networkRepository: NetworkRepository by inject()

  val createLoginLiveData: MutableLiveData<Response<CreateLoginResponse>> =
      MutableLiveData<Response<CreateLoginResponse>>()


  private val prefs: PreferenceHelper by inject()

  lateinit var googleAuthResponse: GoogleSignInAccount

  var facebookAuthResponse: JSONObject = JSONObject()

  fun callCreateLoginApi(): Unit {
    viewModelScope.launch {
      progressLiveData.postValue(true)
      createLoginLiveData.postValue(
      networkRepository.createLogin(
      createLoginRequest = CreateLoginRequest()
      )
      )
      progressLiveData.postValue(false)
    }
  }

  fun bindCreateLoginResponse(response: CreateLoginResponse): Unit {
    val signInModelValue = signInModel.value ?:SignInModel()
    prefs.setToken(response.data?.token)
    signInModel.value = signInModelValue
  }
}
