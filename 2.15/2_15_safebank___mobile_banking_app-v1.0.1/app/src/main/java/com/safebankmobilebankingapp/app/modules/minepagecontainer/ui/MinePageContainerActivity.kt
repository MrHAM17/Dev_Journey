package com.safebankmobilebankingapp.app.modules.minepagecontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityMinePageContainerBinding
import com.safebankmobilebankingapp.app.extensions.loadFragment
import com.safebankmobilebankingapp.app.modules.minepage.ui.MinePageFragment
import com.safebankmobilebankingapp.app.modules.minepagecontainer.`data`.viewmodel.MinePageContainerVM
import com.safebankmobilebankingapp.app.modules.nationalbank.ui.NationalBankFragment
import com.safebankmobilebankingapp.app.modules.profile.ui.ProfileFragment
import com.safebankmobilebankingapp.app.modules.statisticstabcontainer.ui.StatisticsTabContainerFragment
import kotlin.String
import kotlin.Unit

class MinePageContainerActivity :
    BaseActivity<ActivityMinePageContainerBinding>(R.layout.activity_mine_page_container) {
  private val viewModel: MinePageContainerVM by viewModels<MinePageContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.minePageContainerVM = viewModel
    val destFragment = MinePageFragment.getInstance(null)
    this.loadFragment(
    R.id.fragmentContainer,
    destFragment,
    bundle = destFragment.arguments,
    tag = MinePageFragment.TAG,
    addToBackStack = false,
    add = false,
    enter = null,
    exit = null,
    )
  }

  override fun setUpClicks(): Unit {
    binding.imageUser1.setOnClickListener {
      val destFragment = NationalBankFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = NationalBankFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.imageUser.setOnClickListener {
      val destFragment = MinePageFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = MinePageFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.imageSearch.setOnClickListener {
      val destFragment = ProfileFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = ProfileFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.imageStatistics.setOnClickListener {
      val destFragment = StatisticsTabContainerFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = StatisticsTabContainerFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
  }

  companion object {
    const val TAG: String = "MINE_PAGE_CONTAINER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, MinePageContainerActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
