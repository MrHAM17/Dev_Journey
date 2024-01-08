package com.hiredjobsearch.app.modules.applyjobpopup.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.applyjobpopup.`data`.model.ApplyJobPopupModel
import org.koin.core.KoinComponent

class ApplyJobPopupVM : ViewModel(), KoinComponent {
  val applyJobPopupModel: MutableLiveData<ApplyJobPopupModel> =
      MutableLiveData(ApplyJobPopupModel())

  var navArguments: Bundle? = null
}
