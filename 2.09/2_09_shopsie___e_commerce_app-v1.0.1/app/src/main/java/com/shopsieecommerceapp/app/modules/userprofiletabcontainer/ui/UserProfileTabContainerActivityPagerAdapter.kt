package com.shopsieecommerceapp.app.modules.userprofiletabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import com.shopsieecommerceapp.app.modules.gallery.ui.GalleryFragment
import com.shopsieecommerceapp.app.modules.userprofile.ui.UserProfileFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class UserProfileTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_posts),MyApp.getInstance().resources.getString(R.string.lbl_photos),MyApp.getInstance().resources.getString(R.string.lbl_videos),MyApp.getInstance().resources.getString(R.string.lbl_events))

        val viewPages: List<Fragment> =
                listOf(UserProfileFragment(),GalleryFragment(),GalleryFragment(),GalleryFragment())

    }
}
