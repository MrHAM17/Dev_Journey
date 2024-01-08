package com.tikpikshortvideosocialnetworking.app.modules.trendingsoundstabcontainer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentTrendingSoundsTabContainerBinding
import com.tikpikshortvideosocialnetworking.app.modules.trendingsoundstabcontainer.`data`.viewmodel.TrendingSoundsTabContainerVM
import kotlin.String
import kotlin.Unit

class TrendingSoundsTabContainerFragment :
    BaseFragment<FragmentTrendingSoundsTabContainerBinding>(R.layout.fragment_trending_sounds_tab_container)
    {
  private val viewModel: TrendingSoundsTabContainerVM by viewModels<TrendingSoundsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.trendingSoundsTabContainerVM = viewModel
    val adapter = TrendingSoundsTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = TrendingSoundsTabContainerFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "TRENDING_SOUNDS_TAB_CONTAINER_FRAGMENT"


      fun getInstance(bundle: Bundle?): TrendingSoundsTabContainerFragment {
        val fragment = TrendingSoundsTabContainerFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
