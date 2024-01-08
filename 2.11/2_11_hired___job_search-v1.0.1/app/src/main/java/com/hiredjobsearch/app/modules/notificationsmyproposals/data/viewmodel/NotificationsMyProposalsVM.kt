package com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.model.NotificationsMyProposalsModel
import com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.model.NotificationsmyproposalsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class NotificationsMyProposalsVM : ViewModel(), KoinComponent {
  val notificationsMyProposalsModel: MutableLiveData<NotificationsMyProposalsModel> =
      MutableLiveData(NotificationsMyProposalsModel())

  var navArguments: Bundle? = null

  val notificationsMyProposalsList: MutableLiveData<MutableList<NotificationsmyproposalsRowModel>> =
      MutableLiveData(mutableListOf())
}
