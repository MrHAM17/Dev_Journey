package com.fashionistaecommerceapp.app.modules.hometabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import com.fashionistaecommerceapp.app.modules.home.ui.HomeFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class HomeTabContainerFragmentPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_all),MyApp.getInstance().resources.getString(R.string.lbl_summer),MyApp.getInstance().resources.getString(R.string.lbl_man),MyApp.getInstance().resources.getString(R.string.lbl_woman),MyApp.getInstance().resources.getString(R.string.lbl_kids))

        val viewPages: List<Fragment> =
                listOf(HomeFragment(),HomeFragment(),HomeFragment(),HomeFragment(),HomeFragment())

    }
}
