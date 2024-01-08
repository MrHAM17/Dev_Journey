package com.fashionistaecommerceapp.app.modules.reviewstabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import com.fashionistaecommerceapp.app.modules.reviews.ui.ReviewsFragment
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
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_positive),MyApp.getInstance().resources.getString(R.string.lbl_negetive))

        val viewPages: List<Fragment> = listOf(ReviewsFragment(),ReviewsFragment())

    }
}
