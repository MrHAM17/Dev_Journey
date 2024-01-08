package com.safebankmobilebankingapp.app.modules.transfertabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import com.safebankmobilebankingapp.app.modules.transfer.ui.TransferFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class TransferTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_eur),MyApp.getInstance().resources.getString(R.string.lbl_usd),MyApp.getInstance().resources.getString(R.string.lbl_gbp))

        val viewPages: List<Fragment> =
                listOf(TransferFragment(),TransferFragment(),TransferFragment())

    }
}
