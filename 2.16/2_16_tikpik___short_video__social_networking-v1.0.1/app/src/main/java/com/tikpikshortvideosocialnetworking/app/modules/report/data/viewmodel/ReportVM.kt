package com.tikpikshortvideosocialnetworking.app.modules.report.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.report.`data`.model.ReportModel
import org.koin.core.KoinComponent

class ReportVM : ViewModel(), KoinComponent {
  val reportModel: MutableLiveData<ReportModel> = MutableLiveData(ReportModel())

  var navArguments: Bundle? = null
}
