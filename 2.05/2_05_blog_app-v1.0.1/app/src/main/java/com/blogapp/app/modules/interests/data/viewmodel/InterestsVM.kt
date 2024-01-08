package com.blogapp.app.modules.interests.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.interests.`data`.model.InterestsModel
import org.koin.core.KoinComponent

class InterestsVM : ViewModel(), KoinComponent {
  val interestsModel: MutableLiveData<InterestsModel> = MutableLiveData(InterestsModel())

  var navArguments: Bundle? = null
}
