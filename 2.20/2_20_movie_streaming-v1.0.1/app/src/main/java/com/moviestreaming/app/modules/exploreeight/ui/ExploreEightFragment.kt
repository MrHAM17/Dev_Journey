package com.moviestreaming.app.modules.exploreeight.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseFragment
import com.moviestreaming.app.databinding.FragmentExploreEightBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.exploreeight.`data`.model.ExploreeightRowModel
import com.moviestreaming.app.modules.exploreeight.`data`.model.Specials6RowModel
import com.moviestreaming.app.modules.exploreeight.`data`.viewmodel.ExploreEightVM
import com.moviestreaming.app.modules.seemorefive.ui.SeeMoreFiveActivity
import com.moviestreaming.app.modules.seemoresix.ui.SeeMoreSixActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreEightFragment :
    BaseFragment<FragmentExploreEightBinding>(R.layout.fragment_explore_eight) {
  private val viewModel: ExploreEightVM by viewModels<ExploreEightVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val specialsAdapter = SpecialsAdapter(viewModel.specialsList.value?:mutableListOf())
    binding.recyclerSpecials.adapter = specialsAdapter
    specialsAdapter.setOnItemClickListener(
    object : SpecialsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials6RowModel) {
        onClickRecyclerSpecials(view, position, item)
      }
    }
    )
    viewModel.specialsList.observe(requireActivity()) {
      specialsAdapter.updateData(it)
    }
    val exploreEightAdapter =
    ExploreEightAdapter(viewModel.exploreEightList.value?:mutableListOf())
    binding.recyclerExploreEight.adapter = exploreEightAdapter
    exploreEightAdapter.setOnItemClickListener(
    object : ExploreEightAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ExploreeightRowModel) {
        onClickRecyclerExploreEight(view, position, item)
      }
    }
    )
    viewModel.exploreEightList.observe(requireActivity()) {
      exploreEightAdapter.updateData(it)
    }
    binding.exploreEightVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSpecials(
    view: View,
    position: Int,
    item: Specials6RowModel
  ): Unit {
    when(view.id) {
      R.id.imageDrama ->  {
        onClickRecyclerSpecialsImageDrama(view, position, item)
      }
    }
  }

  fun onClickRecyclerExploreEight(
    view: View,
    position: Int,
    item: ExploreeightRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerExploreEightLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSpecialsImageDrama(
    view: View,
    position: Int,
    item: Specials6RowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = SeeMoreSixActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = SeeMoreFiveActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerExploreEightLinearMovieCard(
    view: View,
    position: Int,
    item: ExploreeightRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "EXPLORE_EIGHT_FRAGMENT"


    fun getInstance(bundle: Bundle?): ExploreEightFragment {
      val fragment = ExploreEightFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
