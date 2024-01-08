package com.fashionistaecommerceapp.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.home.`data`.model.Frame2RowModel
import com.fashionistaecommerceapp.app.modules.home.`data`.model.Frame3RowModel
import com.fashionistaecommerceapp.app.modules.home.`data`.model.HomeModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<Frame2RowModel>> = MutableLiveData(mutableListOf())

  val frame1List: MutableLiveData<MutableList<Frame3RowModel>> = MutableLiveData(mutableListOf())
}
