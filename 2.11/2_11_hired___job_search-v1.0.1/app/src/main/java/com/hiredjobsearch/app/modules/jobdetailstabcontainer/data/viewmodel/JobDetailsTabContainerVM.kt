package com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.model.JobDetailsTabContainerModel
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.model.JobdetailstabcontainerRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class JobDetailsTabContainerVM : ViewModel(), KoinComponent {
  val jobDetailsTabContainerModel: MutableLiveData<JobDetailsTabContainerModel> =
      MutableLiveData(JobDetailsTabContainerModel())

  var navArguments: Bundle? = null

  val jobDetailsTabContainerList: MutableLiveData<MutableList<JobdetailstabcontainerRowModel>> =
      MutableLiveData(mutableListOf())
}
