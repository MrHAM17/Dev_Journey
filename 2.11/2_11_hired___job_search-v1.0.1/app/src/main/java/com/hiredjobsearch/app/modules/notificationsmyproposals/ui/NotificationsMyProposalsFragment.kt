package com.hiredjobsearch.app.modules.notificationsmyproposals.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentNotificationsMyProposalsBinding
import com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.model.NotificationsmyproposalsRowModel
import com.hiredjobsearch.app.modules.notificationsmyproposals.`data`.viewmodel.NotificationsMyProposalsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NotificationsMyProposalsFragment :
    BaseFragment<FragmentNotificationsMyProposalsBinding>(R.layout.fragment_notifications_my_proposals)
    {
  private val viewModel: NotificationsMyProposalsVM by viewModels<NotificationsMyProposalsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val notificationsMyProposalsAdapter =
    NotificationsMyProposalsAdapter(viewModel.notificationsMyProposalsList.value?:mutableListOf())
    binding.recyclerNotificationsMyProposals.adapter = notificationsMyProposalsAdapter
    notificationsMyProposalsAdapter.setOnItemClickListener(
    object : NotificationsMyProposalsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      NotificationsmyproposalsRowModel) {
        onClickRecyclerNotificationsMyProposals(view, position, item)
      }
    }
    )
    viewModel.notificationsMyProposalsList.observe(requireActivity()) {
      notificationsMyProposalsAdapter.updateData(it)
    }
    binding.notificationsMyProposalsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerNotificationsMyProposals(
    view: View,
    position: Int,
    item: NotificationsmyproposalsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATIONS_MY_PROPOSALS_FRAGMENT"

  }
}
