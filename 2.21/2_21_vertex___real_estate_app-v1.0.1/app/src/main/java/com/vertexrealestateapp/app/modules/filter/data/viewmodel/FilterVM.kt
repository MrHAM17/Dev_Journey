package com.vertexrealestateapp.app.modules.filter.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.filter.`data`.model.FilterModel
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMin1Model
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMin2Model
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMin3Model
import com.vertexrealestateapp.app.modules.filter.`data`.model.SpinnerMinModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FilterVM : ViewModel(), KoinComponent {
  val filterModel: MutableLiveData<FilterModel> = MutableLiveData(FilterModel())

  var navArguments: Bundle? = null

  val spinnerMinList: MutableLiveData<MutableList<SpinnerMinModel>> = MutableLiveData()

  val spinnerMin1List: MutableLiveData<MutableList<SpinnerMin1Model>> = MutableLiveData()

  val spinnerMin2List: MutableLiveData<MutableList<SpinnerMin2Model>> = MutableLiveData()

  val spinnerMin3List: MutableLiveData<MutableList<SpinnerMin3Model>> = MutableLiveData()
}
