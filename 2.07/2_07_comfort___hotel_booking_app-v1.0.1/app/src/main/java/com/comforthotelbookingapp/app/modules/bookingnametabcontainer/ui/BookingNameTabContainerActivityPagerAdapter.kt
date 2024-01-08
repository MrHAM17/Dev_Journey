package com.comforthotelbookingapp.app.modules.bookingnametabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import com.comforthotelbookingapp.app.modules.bookingname.ui.BookingNameFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class BookingNameTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_mr),MyApp.getInstance().resources.getString(R.string.lbl_mrs),MyApp.getInstance().resources.getString(R.string.lbl_ms))

        val viewPages: List<Fragment> =
                listOf(BookingNameFragment(),BookingNameFragment(),BookingNameFragment())

    }
}
