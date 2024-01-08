package com.comforthotelbookingapp.app.modules.searchtypetabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import com.comforthotelbookingapp.app.modules.searchtype.ui.SearchTypeFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class SearchTypeTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_all_hotel),MyApp.getInstance().resources.getString(R.string.lbl_recommended),MyApp.getInstance().resources.getString(R.string.lbl_popular))

        val viewPages: List<Fragment> =
                listOf(SearchTypeFragment(),SearchTypeFragment(),SearchTypeFragment())

    }
}
