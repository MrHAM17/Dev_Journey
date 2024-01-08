package com.safebankmobilebankingapp.app.modules.statisticstabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import com.safebankmobilebankingapp.app.modules.statistics.ui.StatisticsFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class StatisticsTabContainerFragmentPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_d),MyApp.getInstance().resources.getString(R.string.lbl_all))

        val viewPages: List<Fragment> = listOf(StatisticsFragment(),StatisticsFragment())

    }
}
