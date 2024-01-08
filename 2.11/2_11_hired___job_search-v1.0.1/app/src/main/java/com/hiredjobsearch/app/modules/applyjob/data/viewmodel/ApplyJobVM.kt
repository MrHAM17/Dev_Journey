package com.hiredjobsearch.app.modules.applyjob.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.applyjob.`data`.model.ApplyJobModel
import org.koin.core.KoinComponent

class ApplyJobVM : ViewModel(), KoinComponent {
  val applyJobModel: MutableLiveData<ApplyJobModel> = MutableLiveData(ApplyJobModel())

  var navArguments: Bundle? = null
}
