package com.housitbuyrentsellproperty.app.modules.reviewstabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class ReviewsTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> = listOf()

        val viewPages: List<Fragment> = listOf()

    }
}
