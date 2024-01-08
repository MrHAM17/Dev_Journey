package com.tikpikshortvideosocialnetworking.app.modules.profiletabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityProfileTabContainerBinding
import com.tikpikshortvideosocialnetworking.app.modules.followerstabcontainer.ui.FollowersTabContainerActivity
import com.tikpikshortvideosocialnetworking.app.modules.profiletabcontainer.`data`.viewmodel.ProfileTabContainerVM
import com.tikpikshortvideosocialnetworking.app.modules.sendmessage.ui.SendMessageActivity
import com.tikpikshortvideosocialnetworking.app.modules.totallikes.ui.TotalLikesDialog
import kotlin.String
import kotlin.Unit

class ProfileTabContainerActivity :
    BaseActivity<ActivityProfileTabContainerBinding>(R.layout.activity_profile_tab_container) {
  private val viewModel: ProfileTabContainerVM by viewModels<ProfileTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.profileTabContainerVM = viewModel
    val adapter = ProfileTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ProfileTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.frameAutoLayoutVertical.setOnClickListener {
        val destFragment = TotalLikesDialog.getInstance(null)
        destFragment.show(this.supportFragmentManager, TotalLikesDialog.TAG)
      }
      binding.btnMessage.setOnClickListener {
        val destIntent = SendMessageActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.linearAutoLayoutVertical1.setOnClickListener {
        val destIntent = FollowersTabContainerActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "PROFILE_TAB_CONTAINER_ACTIVITY"

    }
  }
