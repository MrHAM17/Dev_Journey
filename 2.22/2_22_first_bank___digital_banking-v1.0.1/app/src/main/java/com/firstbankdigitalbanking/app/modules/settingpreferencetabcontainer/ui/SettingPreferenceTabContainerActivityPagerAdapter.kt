package com.firstbankdigitalbanking.app.modules.settingpreferencetabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import com.firstbankdigitalbanking.app.modules.settingeditprofile.ui.SettingEditProfileFragment
import com.firstbankdigitalbanking.app.modules.settingpreference.ui.SettingPreferenceFragment
import com.firstbankdigitalbanking.app.modules.settingsecurity.ui.SettingSecurityFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class SettingPreferenceTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_edit_profile),MyApp.getInstance().resources.getString(R.string.lbl_preference),MyApp.getInstance().resources.getString(R.string.lbl_security))

        val viewPages: List<Fragment> =
                listOf(SettingEditProfileFragment(),SettingPreferenceFragment(),SettingSecurityFragment())

    }
}
