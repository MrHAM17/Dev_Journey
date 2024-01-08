package com.tikpikshortvideosocialnetworking.app.modules.tellusaboutyourself.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.tellusaboutyourself.`data`.model.TellUsAboutYourselfModel
import org.koin.core.KoinComponent

class TellUsAboutYourselfVM : ViewModel(), KoinComponent {
  val tellUsAboutYourselfModel: MutableLiveData<TellUsAboutYourselfModel> =
      MutableLiveData(TellUsAboutYourselfModel())

  var navArguments: Bundle? = null
}
