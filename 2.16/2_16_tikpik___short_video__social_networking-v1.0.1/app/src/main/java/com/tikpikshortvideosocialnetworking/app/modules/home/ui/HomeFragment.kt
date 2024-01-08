package com.tikpikshortvideosocialnetworking.app.modules.home.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentHomeBinding
import com.tikpikshortvideosocialnetworking.app.extensions.loadFragment
import com.tikpikshortvideosocialnetworking.app.modules.comments.ui.CommentsBottomsheet
import com.tikpikshortvideosocialnetworking.app.modules.home.`data`.viewmodel.HomeVM
import com.tikpikshortvideosocialnetworking.app.modules.profile.ui.ProfileFragment
import com.tikpikshortvideosocialnetworking.app.modules.report.ui.ReportActivity
import com.tikpikshortvideosocialnetworking.app.modules.searchtypekeyword.ui.SearchTypeKeywordActivity
import com.tikpikshortvideosocialnetworking.app.modules.seelive.ui.SeeLiveActivity
import com.tikpikshortvideosocialnetworking.app.modules.soundused.ui.SoundUsedActivity
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearAutoLayoutVertical5.setOnClickListener {
      val destFragment = CommentsBottomsheet.getInstance(null)
      destFragment.show(requireActivity().supportFragmentManager, CommentsBottomsheet.TAG)
    }
    binding.linearAutoLayoutHorizontal1.setOnClickListener {
      val destFragment = ProfileFragment.getInstance(null)
      requireActivity().loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = ProfileFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
      requireActivity().onBackPressed()
    }
    binding.imageRewind.setOnClickListener {
      val destIntent = SearchTypeKeywordActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageCategoriesLive.setOnClickListener {
      val destIntent = SeeLiveActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal2.setOnClickListener {
      val destIntent = SoundUsedActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageCategoriesReport.setOnClickListener {
      val destIntent = ReportActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "HOME_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeFragment {
      val fragment = HomeFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
