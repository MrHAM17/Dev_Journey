package com.comforthotelbookingapp.app.modules.fillprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.dhi0.`data`.model.Dhi0Model
import com.comforthotelbookingapp.app.modules.fillprofile.`data`.model.FillProfileModel
import com.comforthotelbookingapp.app.modules.fillprofile.`data`.model.SpinnerGenderModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FillProfileVM : ViewModel(), KoinComponent {
  val fillProfileModel: MutableLiveData<FillProfileModel> = MutableLiveData(FillProfileModel())

  var navArguments: Bundle? = null

  public var includedModel: MutableLiveData<Dhi0Model> = MutableLiveData(Dhi0Model())

  val spinnerGenderList: MutableLiveData<MutableList<SpinnerGenderModel>> = MutableLiveData()
}
