package com.tunecastmusicstreamingpodcastapp.app.modules.yourlikestabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityYourLikesTabContainerBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikestabcontainer.`data`.viewmodel.YourLikesTabContainerVM
import kotlin.String
import kotlin.Unit

class YourLikesTabContainerActivity :
    BaseActivity<ActivityYourLikesTabContainerBinding>(R.layout.activity_your_likes_tab_container) {
  private val viewModel: YourLikesTabContainerVM by viewModels<YourLikesTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.yourLikesTabContainerVM = viewModel
    val adapter = YourLikesTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = YourLikesTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "YOUR_LIKES_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, YourLikesTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
