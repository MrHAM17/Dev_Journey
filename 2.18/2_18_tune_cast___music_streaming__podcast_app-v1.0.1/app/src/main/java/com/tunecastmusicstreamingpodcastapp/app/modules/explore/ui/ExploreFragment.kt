package com.tunecastmusicstreamingpodcastapp.app.modules.explore.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentExploreBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.ui.ChartsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.explore.`data`.model.ExploreRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.explore.`data`.viewmodel.ExploreVM
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.ui.NewReleasesActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.ui.PodcastsActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreFragment : BaseFragment<FragmentExploreBinding>(R.layout.fragment_explore) {
  private val viewModel: ExploreVM by viewModels<ExploreVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val exploreAdapter = ExploreAdapter(viewModel.exploreList.value?:mutableListOf())
    binding.recyclerExplore.adapter = exploreAdapter
    exploreAdapter.setOnItemClickListener(
    object : ExploreAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ExploreRowModel) {
        onClickRecyclerExplore(view, position, item)
      }
    }
    )
    viewModel.exploreList.observe(requireActivity()) {
      exploreAdapter.updateData(it)
    }
    binding.exploreVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerExplore(
    view: View,
    position: Int,
    item: ExploreRowModel
  ): Unit {
    when(view.id) {
      R.id.linearExploreCard ->  {
        onClickRecyclerExploreLinearExploreCard(view, position, item)
      }
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    fun onClickRecyclerExploreLinearExploreCard(
      view: View,
      position: Int,
      item: ExploreRowModel
    ) {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 ->  {
          val destIntent = PodcastsActivity.getIntent(requireActivity(), null)
          startActivity(destIntent)
          requireActivity().onBackPressed()
        }
        1 ->  {
          val destIntent = ChartsActivity.getIntent(requireActivity(), null)
          startActivity(destIntent)
          requireActivity().onBackPressed()
        }
        2 ->  {
          val destIntent = NewReleasesActivity.getIntent(requireActivity(), null)
          startActivity(destIntent)
          requireActivity().onBackPressed()
        }
      }
    }

    companion object {
      const val TAG: String = "EXPLORE_FRAGMENT"


      fun getInstance(bundle: Bundle?): ExploreFragment {
        val fragment = ExploreFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
