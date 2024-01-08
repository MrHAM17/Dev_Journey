package com.tikpikshortvideosocialnetworking.app.modules.weeklyrankingtabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityWeeklyRankingTabContainerBinding
import com.tikpikshortvideosocialnetworking.app.modules.weeklyrankingtabcontainer.`data`.viewmodel.WeeklyRankingTabContainerVM
import kotlin.String
import kotlin.Unit

class WeeklyRankingTabContainerActivity :
    BaseActivity<ActivityWeeklyRankingTabContainerBinding>(R.layout.activity_weekly_ranking_tab_container)
    {
  private val viewModel: WeeklyRankingTabContainerVM by viewModels<WeeklyRankingTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.weeklyRankingTabContainerVM = viewModel
    val adapter =
    WeeklyRankingTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = WeeklyRankingTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "WEEKLY_RANKING_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, WeeklyRankingTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
