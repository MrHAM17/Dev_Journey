package com.tikpikshortvideosocialnetworking.app.modules.risingstars.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentRisingStarsBinding
import com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.model.RisingstarsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.viewmodel.RisingStarsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class RisingStarsFragment : BaseFragment<FragmentRisingStarsBinding>(R.layout.fragment_rising_stars)
    {
  private val viewModel: RisingStarsVM by viewModels<RisingStarsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val risingstarsAdapter =
    RisingstarsAdapter(viewModel.risingstarsList.value?:mutableListOf())
    binding.recyclerRisingstars.adapter = risingstarsAdapter
    risingstarsAdapter.setOnItemClickListener(
    object : RisingstarsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : RisingstarsRowModel) {
        onClickRecyclerRisingstars(view, position, item)
      }
    }
    )
    viewModel.risingstarsList.observe(requireActivity()) {
      risingstarsAdapter.updateData(it)
    }
    binding.risingStarsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerRisingstars(
    view: View,
    position: Int,
    item: RisingstarsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "RISING_STARS_FRAGMENT"

  }
}
