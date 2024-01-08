package com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.model.TopAgentsProfileDetailModel
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.model.TopagentsprofiledetailRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopAgentsProfileDetailVM : ViewModel(), KoinComponent {
  val topAgentsProfileDetailModel: MutableLiveData<TopAgentsProfileDetailModel> =
      MutableLiveData(TopAgentsProfileDetailModel())

  var navArguments: Bundle? = null

  val topAgentsProfileDetailList: MutableLiveData<MutableList<TopagentsprofiledetailRowModel>> =
      MutableLiveData(mutableListOf())
}
