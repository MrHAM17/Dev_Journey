package com.blogapp.app.modules.interestspeopletabcontainer.ui

import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityInterestsPeopleTabContainerBinding
import com.blogapp.app.modules.interestspeopletabcontainer.`data`.viewmodel.InterestsPeopleTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.String

class InterestsPeopleTabContainerActivity :
        BaseActivity<ActivityInterestsPeopleTabContainerBinding>(R.layout.activity_interests_people_tab_container)
        {
    private val viewModel: InterestsPeopleTabContainerVM by
            viewModels<InterestsPeopleTabContainerVM>()

    override fun onInitialized() {
        viewModel.navArguments = intent.extras?.getBundle("bundle")
        binding.interestsPeopleTabContainerVM = viewModel
        val adapter =
                InterestsPeopleTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
        binding.viewPagerTabBarView.adapter = adapter
        TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
            tab.text = InterestsPeopleTabContainerActivityPagerAdapter.title[position]
            }.attach()
        }

        override fun setUpClicks() {
        }

        companion object {
            const val TAG: String = "INTERESTS_PEOPLE_TAB_CONTAINER_ACTIVITY"
        }
    }
