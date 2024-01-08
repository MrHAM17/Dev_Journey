package com.firstbankdigitalbanking.app.modules.settingeditprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.firstbankdigitalbanking.app.modules.settingeditprofile.`data`.model.SettingEditProfileModel
import com.firstbankdigitalbanking.app.network.models.fetchme.FetchMeResponse
import com.firstbankdigitalbanking.app.network.repository.NetworkRepository
import com.firstbankdigitalbanking.app.network.resources.Response
import kotlin.Boolean
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class SettingEditProfileVM : ViewModel(), KoinComponent {
  val settingEditProfileModel: MutableLiveData<SettingEditProfileModel> =
      MutableLiveData(SettingEditProfileModel())


  var navArguments: Bundle? = null


  val progressLiveData: MutableLiveData<Boolean> = MutableLiveData<Boolean>()

  private val networkRepository: NetworkRepository by inject()

  val fetchMeLiveData: MutableLiveData<Response<FetchMeResponse>> =
      MutableLiveData<Response<FetchMeResponse>>()

  fun callFetchMeApi() {
    viewModelScope.launch {
      progressLiveData.postValue(true)
      fetchMeLiveData.postValue(
      networkRepository.fetchMe()
      )
      progressLiveData.postValue(false)
    }
  }

  fun bindFetchMeResponse(response: FetchMeResponse) {
    val settingEditProfileModelValue = settingEditProfileModel.value ?:SettingEditProfileModel()
    settingEditProfileModel.value = settingEditProfileModelValue
  }
}
