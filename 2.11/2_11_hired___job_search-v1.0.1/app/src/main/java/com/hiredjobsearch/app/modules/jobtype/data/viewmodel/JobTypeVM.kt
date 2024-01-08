package com.hiredjobsearch.app.modules.jobtype.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.jobtype.`data`.model.JobTypeModel
import com.hiredjobsearch.app.modules.jobtype.`data`.model.JobtypeRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class JobTypeVM : ViewModel(), KoinComponent {
  val jobTypeModel: MutableLiveData<JobTypeModel> = MutableLiveData(JobTypeModel())

  var navArguments: Bundle? = null

  val jobTypeList: MutableLiveData<MutableList<JobtypeRowModel>> = MutableLiveData(mutableListOf())
}
