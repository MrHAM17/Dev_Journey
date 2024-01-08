package com.fashionistaecommerceapp.app.modules.mycart.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.mycart.`data`.model.MyCartModel
import com.fashionistaecommerceapp.app.modules.mycart.`data`.model.MycartRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MyCartVM : ViewModel(), KoinComponent {
  val myCartModel: MutableLiveData<MyCartModel> = MutableLiveData(MyCartModel())

  var navArguments: Bundle? = null

  val myCartList: MutableLiveData<MutableList<MycartRowModel>> = MutableLiveData(mutableListOf())
}
