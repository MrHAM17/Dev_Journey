package com.tikpikshortvideosocialnetworking.app.modules.followerstabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityFollowersTabContainerBinding
import com.tikpikshortvideosocialnetworking.app.modules.followerstabcontainer.`data`.viewmodel.FollowersTabContainerVM
import kotlin.String
import kotlin.Unit

class FollowersTabContainerActivity :
    BaseActivity<ActivityFollowersTabContainerBinding>(R.layout.activity_followers_tab_container) {
  private val viewModel: FollowersTabContainerVM by viewModels<FollowersTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.followersTabContainerVM = viewModel
    val adapter = FollowersTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = FollowersTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.imageArrowDown.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "FOLLOWERS_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, FollowersTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
