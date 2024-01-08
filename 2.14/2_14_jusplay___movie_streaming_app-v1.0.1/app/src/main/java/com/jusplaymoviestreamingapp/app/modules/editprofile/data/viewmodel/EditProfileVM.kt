package com.jusplaymoviestreamingapp.app.modules.editprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.jusplaymoviestreamingapp.app.modules.editprofile.`data`.model.EditProfileModel
import com.jusplaymoviestreamingapp.app.modules.editprofile.`data`.model.SpinnerArrowdownModel
import com.jusplaymoviestreamingapp.app.network.models.fetchme.FetchMeResponse
import com.jusplaymoviestreamingapp.app.network.repository.NetworkRepository
import com.jusplaymoviestreamingapp.app.network.resources.Response
import kotlin.Boolean
import kotlin.collections.MutableList
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class EditProfileVM : ViewModel(), KoinComponent {
  val editProfileModel: MutableLiveData<EditProfileModel> = MutableLiveData(EditProfileModel())


  var navArguments: Bundle? = null


  val spinnerArrowdownList: MutableLiveData<MutableList<SpinnerArrowdownModel>> = MutableLiveData()


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
    val editProfileModelValue = editProfileModel.value ?:EditProfileModel()
    editProfileModel.value = editProfileModelValue
  }
}
