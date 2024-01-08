package com.shopsieecommerceapp.app.modules.searchtabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import com.shopsieecommerceapp.app.modules.search.ui.SearchFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class SearchTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_for_you),MyApp.getInstance().resources.getString(R.string.lbl_following),MyApp.getInstance().resources.getString(R.string.lbl_popular),MyApp.getInstance().resources.getString(R.string.lbl_featured),MyApp.getInstance().resources.getString(R.string.lbl_live))

        val viewPages: List<Fragment> =
                listOf(SearchFragment(),SearchFragment(),SearchFragment(),SearchFragment(),SearchFragment())

    }
}
