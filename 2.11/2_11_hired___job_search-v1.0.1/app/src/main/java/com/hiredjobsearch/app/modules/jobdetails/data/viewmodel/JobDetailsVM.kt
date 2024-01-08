package com.hiredjobsearch.app.modules.jobdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.jobdetails.`data`.model.JobDetailsModel
import org.koin.core.KoinComponent

class JobDetailsVM : ViewModel(), KoinComponent {
  val jobDetailsModel: MutableLiveData<JobDetailsModel> = MutableLiveData(JobDetailsModel())

  var navArguments: Bundle? = null
}
