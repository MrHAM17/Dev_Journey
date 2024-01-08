package com.socialsocialnetworking.app.modules.discover.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseFragment
import com.socialsocialnetworking.app.databinding.FragmentDiscoverBinding
import com.socialsocialnetworking.app.modules.discover.`data`.model.ProfilesRowModel
import com.socialsocialnetworking.app.modules.discover.`data`.viewmodel.DiscoverVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DiscoverFragment : BaseFragment<FragmentDiscoverBinding>(R.layout.fragment_discover) {
  private val viewModel: DiscoverVM by viewModels<DiscoverVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val profilesAdapter = ProfilesAdapter(viewModel.profilesList.value?:mutableListOf())
    binding.recyclerProfiles.adapter = profilesAdapter
    profilesAdapter.setOnItemClickListener(
    object : ProfilesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProfilesRowModel) {
        onClickRecyclerProfiles(view, position, item)
      }
    }
    )
    viewModel.profilesList.observe(requireActivity()) {
      profilesAdapter.updateData(it)
    }
    binding.discoverVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerProfiles(
    view: View,
    position: Int,
    item: ProfilesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "DISCOVER_FRAGMENT"

  }
}
