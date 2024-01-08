package com.banksydigitalbanking.app.modules.login.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.banksydigitalbanking.app.appcomponents.utility.PreferenceHelper
import com.banksydigitalbanking.app.modules.login.`data`.model.LogInModel
import com.banksydigitalbanking.app.network.models.createlogin.CreateLoginRequest
import com.banksydigitalbanking.app.network.models.createlogin.CreateLoginResponse
import com.banksydigitalbanking.app.network.repository.NetworkRepository
import com.banksydigitalbanking.app.network.resources.Response
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import kotlin.Boolean
import kotlin.Unit
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class LogInVM : ViewModel(), KoinComponent {
  val logInModel: MutableLiveData<LogInModel> = MutableLiveData(LogInModel())


  var navArguments: Bundle? = null


  val progressLiveData: MutableLiveData<Boolean> = MutableLiveData<Boolean>()


  private val networkRepository: NetworkRepository by inject()

  val createLoginLiveData: MutableLiveData<Response<CreateLoginResponse>> =
      MutableLiveData<Response<CreateLoginResponse>>()


  private val prefs: PreferenceHelper by inject()

  lateinit var googleAuthResponse: GoogleSignInAccount

  lateinit var googleAuthResponse: GoogleSignInAccount

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
    val logInModelValue = logInModel.value ?:LogInModel()
    prefs.setToken(response.data?.token)
    logInModel.value = logInModelValue
  }
}
