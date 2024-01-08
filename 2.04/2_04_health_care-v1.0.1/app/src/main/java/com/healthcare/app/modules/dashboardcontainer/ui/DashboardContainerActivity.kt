package com.healthcare.app.modules.dashboardcontainer.ui

import androidx.activity.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseActivity
import com.healthcare.app.databinding.ActivityDashboardContainerBinding
import com.healthcare.app.extensions.loadFragment
import com.healthcare.app.modules.dashboard.ui.DashboardFragment
import com.healthcare.app.modules.dashboardcontainer.`data`.viewmodel.DashboardContainerVM
import com.healthcare.app.modules.messagetabcontainer.ui.MessageTabContainerFragment
import com.healthcare.app.modules.scheduletabcontainer.ui.ScheduleTabContainerFragment
import com.healthcare.app.modules.settings.ui.SettingsFragment
import kotlin.String
import kotlin.Unit

class DashboardContainerActivity :
    BaseActivity<ActivityDashboardContainerBinding>(R.layout.activity_dashboard_container) {
  private val viewModel: DashboardContainerVM by viewModels<DashboardContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.dashboardContainerVM = viewModel
    val destFragment = DashboardFragment.getInstance(null)
    this.loadFragment(
        R.id.fragmentContainer,
        destFragment,
        bundle = destFragment.arguments, 
        tag = DashboardFragment.TAG, 
        addToBackStack = false, 
        add = false, 
        enter = null, 
        exit = null, 
        )
  }

  override fun setUpClicks(): Unit {
    binding.linearMessage.setOnClickListener {
      val destFragment = MessageTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = MessageTabContainerFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearHome.setOnClickListener {
      val destFragment = DashboardFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = DashboardFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearProfile.setOnClickListener {
      val destFragment = SettingsFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = SettingsFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.linearAppointment.setOnClickListener {
      val destFragment = ScheduleTabContainerFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = ScheduleTabContainerFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "DASHBOARD_CONTAINER_ACTIVITY"

  }
}
