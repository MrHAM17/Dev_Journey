package com.housitbuyrentsellproperty.app.modules.topagentsprofiledetailtabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityTopAgentsProfileDetailTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.topagentsprofiledetailtabcontainer.`data`.viewmodel.TopAgentsProfileDetailTabContainerVM
import kotlin.String
import kotlin.Unit

class TopAgentsProfileDetailTabContainerActivity :
    BaseActivity<ActivityTopAgentsProfileDetailTabContainerBinding>(R.layout.activity_top_agents_profile_detail_tab_container)
    {
  private val viewModel: TopAgentsProfileDetailTabContainerVM by
      viewModels<TopAgentsProfileDetailTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.topAgentsProfileDetailTabContainerVM = viewModel
    val adapter =
    TopAgentsProfileDetailTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = TopAgentsProfileDetailTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "TOP_AGENTS_PROFILE_DETAIL_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, TopAgentsProfileDetailTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
