package com.hiredjobsearch.app.modules.notificationsmyproposalstabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import com.hiredjobsearch.app.modules.notificationsgeneral.ui.NotificationsGeneralFragment
import com.hiredjobsearch.app.modules.notificationsmyproposals.ui.NotificationsMyProposalsFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class NotificationsMyProposalsTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_general),MyApp.getInstance().resources.getString(R.string.lbl_my_proposals))

        val viewPages: List<Fragment> =
                listOf(NotificationsMyProposalsFragment(),NotificationsGeneralFragment())

    }
}
