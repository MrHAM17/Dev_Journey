package com.shopsieecommerceapp.app.modules.archivedmessagetabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import com.shopsieecommerceapp.app.modules.archivedmessage.ui.ArchivedMessageFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class ArchivedMessageTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_direct_messages),MyApp.getInstance().resources.getString(R.string.lbl_group_chat),MyApp.getInstance().resources.getString(R.string.lbl_archived))

        val viewPages: List<Fragment> =
                listOf(ArchivedMessageFragment(),ArchivedMessageFragment(),ArchivedMessageFragment())

    }
}
