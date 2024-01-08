package com.helthiotelehealth.app.modules.chatwithdoctor.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.helthiotelehealth.app.modules.chatwithdoctor.`data`.model.ChatWithDoctorModel
import org.koin.core.KoinComponent

class ChatWithDoctorVM : ViewModel(), KoinComponent {
  val chatWithDoctorModel: MutableLiveData<ChatWithDoctorModel> =
      MutableLiveData(ChatWithDoctorModel())

  var navArguments: Bundle? = null
}
