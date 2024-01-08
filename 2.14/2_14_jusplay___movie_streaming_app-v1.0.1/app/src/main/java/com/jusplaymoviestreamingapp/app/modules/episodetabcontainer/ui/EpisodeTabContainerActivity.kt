package com.jusplaymoviestreamingapp.app.modules.episodetabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityEpisodeTabContainerBinding
import com.jusplaymoviestreamingapp.app.modules.episodetabcontainer.`data`.viewmodel.EpisodeTabContainerVM
import kotlin.String
import kotlin.Unit

class EpisodeTabContainerActivity :
    BaseActivity<ActivityEpisodeTabContainerBinding>(R.layout.activity_episode_tab_container) {
  private val viewModel: EpisodeTabContainerVM by viewModels<EpisodeTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.episodeTabContainerVM = viewModel
    val adapter = EpisodeTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = EpisodeTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "EPISODE_TAB_CONTAINER_ACTIVITY"

    }
  }
