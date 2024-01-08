package com.tikpikshortvideosocialnetworking.app.modules.whenisyourbirthday.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.whenisyourbirthday.`data`.model.WhenIsYourBirthdayModel
import org.koin.core.KoinComponent

class WhenIsYourBirthdayVM : ViewModel(), KoinComponent {
  val whenIsYourBirthdayModel: MutableLiveData<WhenIsYourBirthdayModel> =
      MutableLiveData(WhenIsYourBirthdayModel())

  var navArguments: Bundle? = null
}
