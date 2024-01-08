package com.housitbuyrentsellproperty.app.modules.notificationlisttabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import com.housitbuyrentsellproperty.app.modules.notificationlist.ui.NotificationListFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class NotificationListTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_listing),MyApp.getInstance().resources.getString(R.string.lbl_history))

        val viewPages: List<Fragment> =
                listOf(NotificationListFragment(),NotificationListFragment())

    }
}
