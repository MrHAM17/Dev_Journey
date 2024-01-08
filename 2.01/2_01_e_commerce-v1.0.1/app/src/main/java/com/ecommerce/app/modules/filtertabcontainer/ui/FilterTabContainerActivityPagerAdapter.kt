package com.ecommerce.app.modules.filtertabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import com.ecommerce.app.modules.filter.ui.FilterFragment
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
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_new),MyApp.getInstance().resources.getString(R.string.lbl_used),MyApp.getInstance().resources.getString(R.string.lbl_not_specified))

        val viewPages: List<Fragment> = listOf(FilterFragment(),FilterFragment(),FilterFragment())

    }
}
