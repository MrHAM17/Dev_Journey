package com.fashionistaecommerceapp.app.modules.exploreshop.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.exploreshop.`data`.model.ExploreShopModel
import org.koin.core.KoinComponent

class ExploreShopVM : ViewModel(), KoinComponent {
  val exploreShopModel: MutableLiveData<ExploreShopModel> = MutableLiveData(ExploreShopModel())

  var navArguments: Bundle? = null
}
