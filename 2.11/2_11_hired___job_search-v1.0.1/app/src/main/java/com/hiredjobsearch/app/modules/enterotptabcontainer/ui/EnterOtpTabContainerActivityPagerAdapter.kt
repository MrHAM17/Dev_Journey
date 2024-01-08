package com.hiredjobsearch.app.modules.enterotptabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import com.hiredjobsearch.app.modules.enterotp.ui.EnterOtpFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class EnterOtpTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_4),MyApp.getInstance().resources.getString(R.string.lbl_3),MyApp.getInstance().resources.getString(R.string.lbl_2),MyApp.getInstance().resources.getString(R.string.lbl))

        val viewPages: List<Fragment> =
                listOf(EnterOtpFragment(),EnterOtpFragment(),EnterOtpFragment(),EnterOtpFragment())

    }
}
