package com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.model.ViewersModel
import com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.model.ViewersRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ViewersVM : ViewModel(), KoinComponent {
  val viewersModel: MutableLiveData<ViewersModel> = MutableLiveData(ViewersModel())

  var navArguments: Bundle? = null

  val viewersList: MutableLiveData<MutableList<ViewersRowModel>> = MutableLiveData(mutableListOf())
}
