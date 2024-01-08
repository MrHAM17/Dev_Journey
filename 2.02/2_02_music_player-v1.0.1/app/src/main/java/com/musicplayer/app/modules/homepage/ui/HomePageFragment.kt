package com.musicplayer.app.modules.homepage.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseFragment
import com.musicplayer.app.databinding.FragmentHomePageBinding
import com.musicplayer.app.modules.homepage.`data`.model.NewreleaseslistRowModel
import com.musicplayer.app.modules.homepage.`data`.viewmodel.HomePageVM
import com.musicplayer.app.modules.playlist.ui.PlaylistBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomePageFragment : BaseFragment<FragmentHomePageBinding>(R.layout.fragment_home_page) {
  private val viewModel: HomePageVM by viewModels<HomePageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val newReleasesListAdapter =
    NewReleasesListAdapter(viewModel.newReleasesListList.value?:mutableListOf())
    binding.recyclerNewReleasesList.adapter = newReleasesListAdapter
    newReleasesListAdapter.setOnItemClickListener(
    object : NewReleasesListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : NewreleaseslistRowModel) {
        onClickRecyclerNewReleasesList(view, position, item)
      }
    }
    )
    viewModel.newReleasesListList.observe(requireActivity()) {
      newReleasesListAdapter.updateData(it)
    }
    binding.homePageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtViewAll.setOnClickListener {
      val destFragment = PlaylistBottomsheet.getInstance(null)
      destFragment.show(requireActivity().supportFragmentManager, PlaylistBottomsheet.TAG)
    }
  }

  fun onClickRecyclerNewReleasesList(
    view: View,
    position: Int,
    item: NewreleaseslistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HOME_PAGE_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomePageFragment {
      val fragment = HomePageFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
