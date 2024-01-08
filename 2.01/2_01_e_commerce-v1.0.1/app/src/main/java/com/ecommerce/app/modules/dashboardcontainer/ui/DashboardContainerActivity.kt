package com.ecommerce.app.modules.dashboardcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityDashboardContainerBinding
import com.ecommerce.app.extensions.loadFragment
import com.ecommerce.app.modules.account.ui.AccountFragment
import com.ecommerce.app.modules.cart.ui.CartFragment
import com.ecommerce.app.modules.dashboard.ui.DashboardFragment
import com.ecommerce.app.modules.dashboardcontainer.`data`.viewmodel.DashboardContainerVM
import com.ecommerce.app.modules.explore.ui.ExploreFragment
import com.ecommerce.app.modules.offerscreen.ui.OfferScreenFragment
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
    binding.linearOffer.setOnClickListener {
      val destFragment = OfferScreenFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = OfferScreenFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.linearProfile.setOnClickListener {
      val destFragment = AccountFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = AccountFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.linearCart.setOnClickListener {
      val destFragment = CartFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = CartFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.linearExplore.setOnClickListener {
      val destFragment = ExploreFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = ExploreFragment.TAG,
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
