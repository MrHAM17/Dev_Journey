package com.firstbankdigitalbanking.app.modules.registers.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.firstbankdigitalbanking.app.appcomponents.utility.PreferenceHelper
import com.firstbankdigitalbanking.app.constants.role
import com.firstbankdigitalbanking.app.modules.registers.`data`.model.RegistersModel
import com.firstbankdigitalbanking.app.network.models.createregister.CreateRegisterRequest
import com.firstbankdigitalbanking.app.network.models.createregister.CreateRegisterResponse
import com.firstbankdigitalbanking.app.network.repository.NetworkRepository
import com.firstbankdigitalbanking.app.network.resources.Response
import kotlin.Boolean
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class RegistersVM : ViewModel(), KoinComponent {
  val registersModel: MutableLiveData<RegistersModel> = MutableLiveData(RegistersModel())


  var navArguments: Bundle? = null


  val progressLiveData: MutableLiveData<Boolean> = MutableLiveData<Boolean>()

  private val networkRepository: NetworkRepository by inject()

  val createRegisterLiveData: MutableLiveData<Response<CreateRegisterResponse>> =
      MutableLiveData<Response<CreateRegisterResponse>>()

  private val prefs: PreferenceHelper by inject()

  fun callCreateRegisterApi() {
    viewModelScope.launch {
      progressLiveData.postValue(true)
      createRegisterLiveData.postValue(
      networkRepository.createRegister(
      createRegisterRequest = CreateRegisterRequest(
          role = role.USER)
      )
      )
      progressLiveData.postValue(false)
    }
  }

  fun bindCreateRegisterResponse(response: CreateRegisterResponse) {
    val registersModelValue = registersModel.value ?:RegistersModel()
    prefs.setId(response.data?.id)
    registersModel.value = registersModelValue
  }
}
