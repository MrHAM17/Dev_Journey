package com.comforthotelbookingapp.app.modules.editprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.comforthotelbookingapp.app.modules.dhi0.`data`.model.Dhi0Model
import com.comforthotelbookingapp.app.modules.editprofile.`data`.model.EditProfileModel
import com.comforthotelbookingapp.app.modules.editprofile.`data`.model.SpinnerCountryModel
import com.comforthotelbookingapp.app.modules.editprofile.`data`.model.SpinnerGenderModel
import com.comforthotelbookingapp.app.network.models.fetchme.FetchMeResponse
import com.comforthotelbookingapp.app.network.repository.NetworkRepository
import com.comforthotelbookingapp.app.network.resources.Response
import kotlin.Boolean
import kotlin.Unit
import kotlin.collections.MutableList
import kotlinx.coroutines.launch
import org.koin.core.KoinComponent
import org.koin.core.inject

class EditProfileVM : ViewModel(), KoinComponent {
  val editProfileModel: MutableLiveData<EditProfileModel> = MutableLiveData(EditProfileModel())


  var navArguments: Bundle? = null


  public var includedModel: MutableLiveData<Dhi0Model> = MutableLiveData(Dhi0Model())


  val spinnerCountryList: MutableLiveData<MutableList<SpinnerCountryModel>> = MutableLiveData()


  val spinnerGenderList: MutableLiveData<MutableList<SpinnerGenderModel>> = MutableLiveData()


  val progressLiveData: MutableLiveData<Boolean> = MutableLiveData<Boolean>()


  private val networkRepository: NetworkRepository by inject()

  val fetchMeLiveData: MutableLiveData<Response<FetchMeResponse>> =
      MutableLiveData<Response<FetchMeResponse>>()


  fun callFetchMeApi(): Unit {
    viewModelScope.launch {
      progressLiveData.postValue(true)
      fetchMeLiveData.postValue(
      networkRepository.fetchMe()
      )
      progressLiveData.postValue(false)
    }
  }

  fun bindFetchMeResponse(response: FetchMeResponse): Unit {
    val editProfileModelValue = editProfileModel.value ?:EditProfileModel()
    editProfileModelValue.etLabel1Value = response.data?.username.toString()
    editProfileModelValue.etEmailValue = response.data?.email.toString()
    editProfileModelValue.etLabelValue = response.data?.name.toString()
    editProfileModel.value = editProfileModelValue
  }
}
