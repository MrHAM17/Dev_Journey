package com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.model.ChoosePlanModel
import com.jusplaymoviestreamingapp.app.modules.chooseplan.`data`.model.ChooseplanRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ChoosePlanVM : ViewModel(), KoinComponent {
  val choosePlanModel: MutableLiveData<ChoosePlanModel> = MutableLiveData(ChoosePlanModel())

  var navArguments: Bundle? = null

  val choosePlanList: MutableLiveData<MutableList<ChooseplanRowModel>> =
      MutableLiveData(mutableListOf())
}
