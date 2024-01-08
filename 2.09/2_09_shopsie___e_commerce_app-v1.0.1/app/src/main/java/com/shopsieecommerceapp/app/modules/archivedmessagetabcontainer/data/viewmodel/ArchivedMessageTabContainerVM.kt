package com.shopsieecommerceapp.app.modules.archivedmessagetabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.archivedmessagetabcontainer.`data`.model.ArchivedMessageTabContainerModel
import org.koin.core.KoinComponent

class ArchivedMessageTabContainerVM : ViewModel(), KoinComponent {
  val archivedMessageTabContainerModel: MutableLiveData<ArchivedMessageTabContainerModel> =
      MutableLiveData(ArchivedMessageTabContainerModel())

  var navArguments: Bundle? = null
}
