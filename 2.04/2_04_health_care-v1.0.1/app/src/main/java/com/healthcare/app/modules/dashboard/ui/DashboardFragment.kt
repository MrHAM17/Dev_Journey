package com.healthcare.app.modules.dashboard.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseFragment
import com.healthcare.app.databinding.FragmentDashboardBinding
import com.healthcare.app.modules.ambulance.ui.AmbulanceActivity
import com.healthcare.app.modules.article.ui.ArticleActivity
import com.healthcare.app.modules.dashboard.`data`.model.DoctorRowModel
import com.healthcare.app.modules.dashboard.`data`.model.FortysevenRowModel
import com.healthcare.app.modules.dashboard.`data`.viewmodel.DashboardVM
import com.healthcare.app.modules.drdetails.ui.DrDetailsActivity
import com.healthcare.app.modules.drlist.ui.DrListActivity
import com.healthcare.app.modules.pharmacy.ui.PharmacyActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DashboardFragment : BaseFragment<FragmentDashboardBinding>(R.layout.fragment_dashboard) {
  private val viewModel: DashboardVM by viewModels<DashboardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val fortySevenAdapter = FortySevenAdapter(viewModel.fortySevenList.value?:mutableListOf())
    binding.recyclerFortySeven.adapter = fortySevenAdapter
    fortySevenAdapter.setOnItemClickListener(
    object : FortySevenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FortysevenRowModel) {
        onClickRecyclerFortySeven(view, position, item)
      }
    }
    )
    viewModel.fortySevenList.observe(requireActivity()) {
      fortySevenAdapter.updateData(it)
    }
    val doctorAdapter = DoctorAdapter(viewModel.doctorList.value?:mutableListOf())
    binding.recyclerDoctor.adapter = doctorAdapter
    doctorAdapter.setOnItemClickListener(
    object : DoctorAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DoctorRowModel) {
        onClickRecyclerDoctor(view, position, item)
      }
    }
    )
    viewModel.doctorList.observe(requireActivity()) {
      doctorAdapter.updateData(it)
    }
    binding.dashboardVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll1.setOnClickListener {
      val destIntent = ArticleActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.txtSeeAll.setOnClickListener {
      val destIntent = DrListActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerFortySeven(
    view: View,
    position: Int,
    item: FortysevenRowModel
  ): Unit {
    when(view.id) {
      R.id.btnTicket ->  {
        onClickRecyclerFortySevenBtnTicket(view, position, item)
      }
    }
  }

  fun onClickRecyclerDoctor(
    view: View,
    position: Int,
    item: DoctorRowModel
  ): Unit {
    when(view.id) {
      R.id.linearDoctor ->  {
        val destIntent = DrDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
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

    fun onClickRecyclerFortySevenBtnTicket(
      view: View,
      position: Int,
      item: FortysevenRowModel
    ) {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 ->  {
          val destIntent = DrListActivity.getIntent(requireActivity(), null)
          startActivity(destIntent)
          requireActivity().onBackPressed()
        }
        1 ->  {
          val destIntent = AmbulanceActivity.getIntent(requireActivity(), null)
          startActivity(destIntent)
          requireActivity().onBackPressed()
        }
        2 ->  {
          val destIntent = ArticleActivity.getIntent(requireActivity(), null)
          startActivity(destIntent)
          requireActivity().onBackPressed()
        }
        3 ->  {
          val destIntent = PharmacyActivity.getIntent(requireActivity(), null)
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
