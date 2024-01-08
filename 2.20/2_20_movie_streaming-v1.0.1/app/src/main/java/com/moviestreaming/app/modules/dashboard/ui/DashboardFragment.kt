package com.moviestreaming.app.modules.dashboard.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseFragment
import com.moviestreaming.app.databinding.FragmentDashboardBinding
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials1RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials2RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials3RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials4RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials5RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.SpecialsRowModel
import com.moviestreaming.app.modules.dashboard.`data`.viewmodel.DashboardVM
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.seemorefive.ui.SeeMoreFiveActivity
import com.moviestreaming.app.modules.seemoresix.ui.SeeMoreSixActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DashboardFragment : BaseFragment<FragmentDashboardBinding>(R.layout.fragment_dashboard) {
  private val viewModel: DashboardVM by viewModels<DashboardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val specialsAdapter = SpecialsAdapter(viewModel.specialsList.value?:mutableListOf())
    binding.recyclerSpecials.adapter = specialsAdapter
    specialsAdapter.setOnItemClickListener(
    object : SpecialsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SpecialsRowModel) {
        onClickRecyclerSpecials(view, position, item)
      }
    }
    )
    viewModel.specialsList.observe(requireActivity()) {
      specialsAdapter.updateData(it)
    }
    val specials1Adapter = Specials1Adapter(viewModel.specials1List.value?:mutableListOf())
    binding.recyclerSpecials1.adapter = specials1Adapter
    specials1Adapter.setOnItemClickListener(
    object : Specials1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials1RowModel) {
        onClickRecyclerSpecials1(view, position, item)
      }
    }
    )
    viewModel.specials1List.observe(requireActivity()) {
      specials1Adapter.updateData(it)
    }
    val specials2Adapter = Specials2Adapter(viewModel.specials2List.value?:mutableListOf())
    binding.recyclerSpecials2.adapter = specials2Adapter
    specials2Adapter.setOnItemClickListener(
    object : Specials2Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials2RowModel) {
        onClickRecyclerSpecials2(view, position, item)
      }
    }
    )
    viewModel.specials2List.observe(requireActivity()) {
      specials2Adapter.updateData(it)
    }
    val specials3Adapter = Specials3Adapter(viewModel.specials3List.value?:mutableListOf())
    binding.recyclerSpecials3.adapter = specials3Adapter
    specials3Adapter.setOnItemClickListener(
    object : Specials3Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials3RowModel) {
        onClickRecyclerSpecials3(view, position, item)
      }
    }
    )
    viewModel.specials3List.observe(requireActivity()) {
      specials3Adapter.updateData(it)
    }
    val specials4Adapter = Specials4Adapter(viewModel.specials4List.value?:mutableListOf())
    binding.recyclerSpecials4.adapter = specials4Adapter
    specials4Adapter.setOnItemClickListener(
    object : Specials4Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials4RowModel) {
        onClickRecyclerSpecials4(view, position, item)
      }
    }
    )
    viewModel.specials4List.observe(requireActivity()) {
      specials4Adapter.updateData(it)
    }
    val specials5Adapter = Specials5Adapter(viewModel.specials5List.value?:mutableListOf())
    binding.recyclerSpecials5.adapter = specials5Adapter
    specials5Adapter.setOnItemClickListener(
    object : Specials5Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials5RowModel) {
        onClickRecyclerSpecials5(view, position, item)
      }
    }
    )
    viewModel.specials5List.observe(requireActivity()) {
      specials5Adapter.updateData(it)
    }
    binding.dashboardVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSpecials(
    view: View,
    position: Int,
    item: SpecialsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSpecialsLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSpecials1(
    view: View,
    position: Int,
    item: Specials1RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerSpecials2(
    view: View,
    position: Int,
    item: Specials2RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        val destIntent = DetailPageSevenActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerSpecials3(
    view: View,
    position: Int,
    item: Specials3RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSpecials3LinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSpecials4(
    view: View,
    position: Int,
    item: Specials4RowModel
  ): Unit {
    when(view.id) {
      R.id.imageDrama ->  {
        onClickRecyclerSpecials4ImageDrama(view, position, item)
      }
    }
  }

  fun onClickRecyclerSpecials5(
    view: View,
    position: Int,
    item: Specials5RowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSpecials5LinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSpecialsLinearMovieCard(
    view: View,
    position: Int,
    item: SpecialsRowModel
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

  fun onClickRecyclerSpecials3LinearMovieCard(
    view: View,
    position: Int,
    item: Specials3RowModel
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

  fun onClickRecyclerSpecials4ImageDrama(
    view: View,
    position: Int,
    item: Specials4RowModel
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

  fun onClickRecyclerSpecials5LinearMovieCard(
    view: View,
    position: Int,
    item: Specials5RowModel
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
    const val TAG: String = "DASHBOARD_FRAGMENT"


    fun getInstance(bundle: Bundle?): DashboardFragment {
      val fragment = DashboardFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
