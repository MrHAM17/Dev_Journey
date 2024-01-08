package com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfound.ui

import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchNotFoundBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchnotfound.`data`.viewmodel.SearchNotFoundVM
import kotlin.String
import kotlin.Unit

class SearchNotFoundFragment :
    BaseFragment<FragmentSearchNotFoundBinding>(R.layout.fragment_search_not_found) {
  private val viewModel: SearchNotFoundVM by viewModels<SearchNotFoundVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.searchNotFoundVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SEARCH_NOT_FOUND_FRAGMENT"

  }
}
