package com.tikpikshortvideosocialnetworking.app.modules.qrcode.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.qrcode.`data`.model.QrCodeModel
import org.koin.core.KoinComponent

class QrCodeVM : ViewModel(), KoinComponent {
  val qrCodeModel: MutableLiveData<QrCodeModel> = MutableLiveData(QrCodeModel())

  var navArguments: Bundle? = null
}
