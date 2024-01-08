package com.tunecastmusicstreamingpodcastapp.app.modules.artiststabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import com.tunecastmusicstreamingpodcastapp.app.modules.artists.ui.ArtistsFragment
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasters.ui.PodcastersFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class ArtistsTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_singers),MyApp.getInstance().resources.getString(R.string.lbl_podcasters))

        val viewPages: List<Fragment> = listOf(ArtistsFragment(),PodcastersFragment())

    }
}
