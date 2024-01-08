package com.vertexrealestateapp.app.modules.filtertabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import com.vertexrealestateapp.app.modules.filter.ui.FilterFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class FilterTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_for_sale),MyApp.getInstance().resources.getString(R.string.lbl_for_rent))

        val viewPages: List<Fragment> = listOf(FilterFragment(),FilterFragment())

    }
}
