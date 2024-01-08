package com.jusplaymoviestreamingapp.app.modules.hometabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import com.jusplaymoviestreamingapp.app.modules.home.ui.HomeFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class HomeTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_all),MyApp.getInstance().resources.getString(R.string.lbl_action),MyApp.getInstance().resources.getString(R.string.lbl_comedy),MyApp.getInstance().resources.getString(R.string.lbl_romance),MyApp.getInstance().resources.getString(R.string.lbl_horor))

        val viewPages: List<Fragment> =
                listOf(HomeFragment(),HomeFragment(),HomeFragment(),HomeFragment(),HomeFragment())

    }
}
