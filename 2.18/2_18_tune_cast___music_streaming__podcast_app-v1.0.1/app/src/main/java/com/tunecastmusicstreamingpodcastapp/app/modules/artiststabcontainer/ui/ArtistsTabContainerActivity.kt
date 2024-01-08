package com.tunecastmusicstreamingpodcastapp.app.modules.artiststabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityArtistsTabContainerBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.artiststabcontainer.`data`.viewmodel.ArtistsTabContainerVM
import kotlin.String
import kotlin.Unit

class ArtistsTabContainerActivity :
    BaseActivity<ActivityArtistsTabContainerBinding>(R.layout.activity_artists_tab_container) {
  private val viewModel: ArtistsTabContainerVM by viewModels<ArtistsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.artistsTabContainerVM = viewModel
    val adapter = ArtistsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ArtistsTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "ARTISTS_TAB_CONTAINER_ACTIVITY"

    }
  }
