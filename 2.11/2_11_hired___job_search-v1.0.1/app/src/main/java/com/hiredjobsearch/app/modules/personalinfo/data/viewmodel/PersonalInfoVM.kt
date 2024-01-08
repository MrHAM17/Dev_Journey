package com.hiredjobsearch.app.modules.personalinfo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.hiredjobsearch.app.modules.personalinfo.`data`.model.PersonalInfoModel
import com.hiredjobsearch.app.network.models.fetchme.FetchMeResponse
import com.hiredjobsearch.app.network.repository.NetworkRepository
import com.hiredjobsearch.app.network.resources.Response
import kotlin.Boolean
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class PersonalInfoVM : ViewModel(), KoinComponent {
  val personalInfoModel: MutableLiveData<PersonalInfoModel> = MutableLiveData(PersonalInfoModel())


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
    val personalInfoModelValue = personalInfoModel.value ?:PersonalInfoModel()
    personalInfoModelValue.etEmailValue = response.data?.email.toString()
    personalInfoModelValue.etFirstNameValue = response.data?.name.toString()
    personalInfoModel.value = personalInfoModelValue
  }
}
