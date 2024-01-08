package com.jusplaymoviestreamingapp.app.modules.episodetabcontainer.ui

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.lifecycle.Lifecycle
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import com.jusplaymoviestreamingapp.app.modules.about.ui.AboutFragment
import com.jusplaymoviestreamingapp.app.modules.episode.ui.EpisodeFragment
import com.jusplaymoviestreamingapp.app.modules.similiar.ui.SimiliarFragment
import kotlin.Int
import kotlin.String
import kotlin.collections.List

class EpisodeTabContainerActivityPagerAdapter(
    val fragmentManager: FragmentManager,
    val lifecycle: Lifecycle
) : FragmentStateAdapter(fragmentManager, lifecycle) {
    override fun getItemCount(): Int = viewPages.size

    override fun createFragment(position: Int): Fragment = viewPages[position]

    companion object AdapterConstant {
        val title: List<String> =
                listOf(MyApp.getInstance().resources.getString(R.string.lbl_episode),MyApp.getInstance().resources.getString(R.string.lbl_similiar),MyApp.getInstance().resources.getString(R.string.lbl_about))

        val viewPages: List<Fragment> = listOf(EpisodeFragment(),SimiliarFragment(),AboutFragment())

    }
}
