package com.hiredjobsearch.app.modules.jobdetailstabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import com.hiredjobsearch.app.modules.appliedjob.ui.AppliedJobFragment
import com.hiredjobsearch.app.modules.jobdetails.ui.JobDetailsFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class JobDetailsTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_description),MyApp.getInstance().resources.getString(R.string.lbl_requirement),MyApp.getInstance().resources.getString(R.string.msg_responsibilities))

        val viewPages: List<Fragment> =
                listOf(JobDetailsFragment(),AppliedJobFragment(),AppliedJobFragment())

    }
}
