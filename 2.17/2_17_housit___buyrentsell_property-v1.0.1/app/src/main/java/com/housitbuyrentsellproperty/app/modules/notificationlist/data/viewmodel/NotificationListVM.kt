package com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.CategoryRowModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.ListRowModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.NotificationListModel
import com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model.SamuelellaRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NotificationListVM : ViewModel(), KoinComponent {
  val notificationListModel: MutableLiveData<NotificationListModel> =
      MutableLiveData(NotificationListModel())

  var navArguments: Bundle? = null

  val categoryList: MutableLiveData<MutableList<CategoryRowModel>> =
      MutableLiveData(mutableListOf())

  val listList: MutableLiveData<MutableList<ListRowModel>> = MutableLiveData(mutableListOf())

  val samuelEllaList: MutableLiveData<MutableList<SamuelellaRowModel>> =
      MutableLiveData(mutableListOf())
}
