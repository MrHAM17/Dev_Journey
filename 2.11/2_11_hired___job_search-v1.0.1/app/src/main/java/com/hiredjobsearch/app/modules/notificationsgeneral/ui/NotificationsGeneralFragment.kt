package com.hiredjobsearch.app.modules.notificationsgeneral.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentNotificationsGeneralBinding
import com.hiredjobsearch.app.modules.notificationsgeneral.`data`.model.NotificationsgeneralRowModel
import com.hiredjobsearch.app.modules.notificationsgeneral.`data`.viewmodel.NotificationsGeneralVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NotificationsGeneralFragment :
    BaseFragment<FragmentNotificationsGeneralBinding>(R.layout.fragment_notifications_general) {
  private val viewModel: NotificationsGeneralVM by viewModels<NotificationsGeneralVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val notificationsGeneralAdapter =
    NotificationsGeneralAdapter(viewModel.notificationsGeneralList.value?:mutableListOf())
    binding.recyclerNotificationsGeneral.adapter = notificationsGeneralAdapter
    notificationsGeneralAdapter.setOnItemClickListener(
    object : NotificationsGeneralAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : NotificationsgeneralRowModel) {
        onClickRecyclerNotificationsGeneral(view, position, item)
      }
    }
    )
    viewModel.notificationsGeneralList.observe(requireActivity()) {
      notificationsGeneralAdapter.updateData(it)
    }
    binding.notificationsGeneralVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerNotificationsGeneral(
    view: View,
    position: Int,
    item: NotificationsgeneralRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATIONS_GENERAL_FRAGMENT"

  }
}
