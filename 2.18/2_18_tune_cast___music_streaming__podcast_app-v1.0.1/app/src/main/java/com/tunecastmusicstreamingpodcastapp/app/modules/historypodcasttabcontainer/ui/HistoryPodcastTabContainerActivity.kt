package com.tunecastmusicstreamingpodcastapp.app.modules.historypodcasttabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityHistoryPodcastTabContainerBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.historypodcasttabcontainer.`data`.viewmodel.HistoryPodcastTabContainerVM
import kotlin.String
import kotlin.Unit

class HistoryPodcastTabContainerActivity :
    BaseActivity<ActivityHistoryPodcastTabContainerBinding>(R.layout.activity_history_podcast_tab_container)
    {
  private val viewModel: HistoryPodcastTabContainerVM by viewModels<HistoryPodcastTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.historyPodcastTabContainerVM = viewModel
    val adapter =
    HistoryPodcastTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = HistoryPodcastTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "HISTORY_PODCAST_TAB_CONTAINER_ACTIVITY"

    }
  }
