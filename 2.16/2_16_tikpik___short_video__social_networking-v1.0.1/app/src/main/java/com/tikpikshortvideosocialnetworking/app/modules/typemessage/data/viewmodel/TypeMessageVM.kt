package com.tikpikshortvideosocialnetworking.app.modules.typemessage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.typemessage.`data`.model.TypeMessageModel
import org.koin.core.KoinComponent

class TypeMessageVM : ViewModel(), KoinComponent {
  val typeMessageModel: MutableLiveData<TypeMessageModel> = MutableLiveData(TypeMessageModel())

  var navArguments: Bundle? = null
}
