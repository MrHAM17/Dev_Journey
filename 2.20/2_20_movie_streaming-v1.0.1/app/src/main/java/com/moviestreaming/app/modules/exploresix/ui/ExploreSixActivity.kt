package com.moviestreaming.app.modules.exploresix.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityExploreSixBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.exploresix.`data`.model.ExploresixRowModel
import com.moviestreaming.app.modules.exploresix.`data`.viewmodel.ExploreSixVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreSixActivity : BaseActivity<ActivityExploreSixBinding>(R.layout.activity_explore_six) {
  private val viewModel: ExploreSixVM by viewModels<ExploreSixVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val exploreSixAdapter = ExploreSixAdapter(viewModel.exploreSixList.value?:mutableListOf())
    binding.recyclerExploreSix.adapter = exploreSixAdapter
    exploreSixAdapter.setOnItemClickListener(
    object : ExploreSixAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ExploresixRowModel) {
        onClickRecyclerExploreSix(view, position, item)
      }
    }
    )
    viewModel.exploreSixList.observe(this) {
      exploreSixAdapter.updateData(it)
    }
    binding.exploreSixVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerExploreSix(
    view: View,
    position: Int,
    item: ExploresixRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerExploreSixLinearMovieCard(view, position, item)
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

    fun onClickRecyclerExploreSixLinearMovieCard(
      view: View,
      position: Int,
      item: ExploresixRowModel
    ) {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        1 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        2 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    companion object {
      const val TAG: String = "EXPLORE_SIX_ACTIVITY"

    }
  }
