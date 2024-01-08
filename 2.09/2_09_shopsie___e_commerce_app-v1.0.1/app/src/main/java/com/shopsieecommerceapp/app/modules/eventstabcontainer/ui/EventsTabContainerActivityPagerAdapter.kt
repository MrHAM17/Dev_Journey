package com.shopsieecommerceapp.app.modules.eventstabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import com.shopsieecommerceapp.app.modules.events.ui.EventsFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class EventsTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_anytime),MyApp.getInstance().resources.getString(R.string.lbl_today),MyApp.getInstance().resources.getString(R.string.lbl_tomorrow),MyApp.getInstance().resources.getString(R.string.lbl_this_week),MyApp.getInstance().resources.getString(R.string.lbl_this_month))

        val viewPages: List<Fragment> =
                listOf(EventsFragment(),EventsFragment(),EventsFragment(),EventsFragment(),EventsFragment())

    }
}
