package com.moviestreaming.app.modules.dashboardcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityDashboardContainerBinding
import com.moviestreaming.app.extensions.loadFragment
import com.moviestreaming.app.modules.accountfive.ui.AccountFiveFragment
import com.moviestreaming.app.modules.channelsix.ui.ChannelSixFragment
import com.moviestreaming.app.modules.dashboard.ui.DashboardFragment
import com.moviestreaming.app.modules.dashboardcontainer.`data`.viewmodel.DashboardContainerVM
import com.moviestreaming.app.modules.exploreeight.ui.ExploreEightFragment
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
    binding.linearHome2.setOnClickListener {
      val destFragment = ChannelSixFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = ChannelSixFragment.TAG,
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
    binding.linearHome3.setOnClickListener {
      val destFragment = AccountFiveFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = AccountFiveFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.linearHome1.setOnClickListener {
      val destFragment = ExploreEightFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = ExploreEightFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
  }

  companion object {
    const val TAG: String = "DASHBOARD_CONTAINER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DashboardContainerActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
