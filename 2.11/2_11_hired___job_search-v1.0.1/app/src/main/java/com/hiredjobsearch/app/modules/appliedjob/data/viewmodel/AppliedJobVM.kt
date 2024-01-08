package com.hiredjobsearch.app.modules.appliedjob.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.appliedjob.`data`.model.AppliedJobModel
import org.koin.core.KoinComponent

class AppliedJobVM : ViewModel(), KoinComponent {
  val appliedJobModel: MutableLiveData<AppliedJobModel> = MutableLiveData(AppliedJobModel())

  var navArguments: Bundle? = null
}
