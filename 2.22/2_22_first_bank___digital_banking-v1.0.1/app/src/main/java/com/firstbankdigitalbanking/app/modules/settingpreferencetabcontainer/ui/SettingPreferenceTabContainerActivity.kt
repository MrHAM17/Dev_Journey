package com.firstbankdigitalbanking.app.modules.settingpreferencetabcontainer.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivitySettingPreferenceTabContainerBinding
import com.firstbankdigitalbanking.app.modules.settingpreferencetabcontainer.`data`.viewmodel.SettingPreferenceTabContainerVM
import com.google.android.material.tabs.TabLayoutMediator
import kotlin.Boolean
import kotlin.String

class SettingPreferenceTabContainerActivity :
        BaseActivity<ActivitySettingPreferenceTabContainerBinding>(R.layout.activity_setting_preference_tab_container)
        {
    private val viewModel: SettingPreferenceTabContainerVM by
            viewModels<SettingPreferenceTabContainerVM>()

    override fun onInitialized() {
        viewModel.navArguments = intent.extras?.getBundle("bundle")
        binding.settingPreferenceTabContainerVM = viewModel
        val adapter =
                SettingPreferenceTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
        binding.viewPagerTabBarView.adapter = adapter
        TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
            tab.text = SettingPreferenceTabContainerActivityPagerAdapter.title[position]
            }.attach()
            setUpSearchViewSearchListener()
        }

        override fun setUpClicks() {
        }

        private fun setUpSearchViewSearchListener() {
            binding.searchViewSearch.setOnQueryTextListener(object :
                    SearchView.OnQueryTextListener {
                override fun onQueryTextSubmit(p0 : String) : Boolean {
                    // Performs search when user hit
                    // the search button on the keyboard
                    return false
                }
                override fun onQueryTextChange(p0 : String) : Boolean {
                    // Start filtering the list as user
                    // start entering the characters
                    return false
                }
                })
            }

            companion object {
                const val TAG: String = "SETTING_PREFERENCE_TAB_CONTAINER_ACTIVITY"
            }
        }
