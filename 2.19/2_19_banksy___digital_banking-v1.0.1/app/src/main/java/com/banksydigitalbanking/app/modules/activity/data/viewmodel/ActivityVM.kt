package com.banksydigitalbanking.app.modules.activity.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.activity.`data`.model.ActivityModel
import org.koin.core.KoinComponent

class ActivityVM : ViewModel(), KoinComponent {
  val activityModel: MutableLiveData<ActivityModel> = MutableLiveData(ActivityModel())

  var navArguments: Bundle? = null
}
