package com.moviestreaming.app.modules.seemoreseven.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySeeMoreSevenBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.seemoreseven.`data`.model.SeemoresevenRowModel
import com.moviestreaming.app.modules.seemoreseven.`data`.viewmodel.SeeMoreSevenVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SeeMoreSevenActivity :
    BaseActivity<ActivitySeeMoreSevenBinding>(R.layout.activity_see_more_seven) {
  private val viewModel: SeeMoreSevenVM by viewModels<SeeMoreSevenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val seeMoreSevenAdapter =
    SeeMoreSevenAdapter(viewModel.seeMoreSevenList.value?:mutableListOf())
    binding.recyclerSeeMoreSeven.adapter = seeMoreSevenAdapter
    seeMoreSevenAdapter.setOnItemClickListener(
    object : SeeMoreSevenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeemoresevenRowModel) {
        onClickRecyclerSeeMoreSeven(view, position, item)
      }
    }
    )
    viewModel.seeMoreSevenList.observe(this) {
      seeMoreSevenAdapter.updateData(it)
    }
    binding.seeMoreSevenVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSeeMoreSeven(
    view: View,
    position: Int,
    item: SeemoresevenRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSeeMoreSevenLinearMovieCard(view, position, item)
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

    fun onClickRecyclerSeeMoreSevenLinearMovieCard(
      view: View,
      position: Int,
      item: SeemoresevenRowModel
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
        3 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        4 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        5 ->  {
          val destIntent = DetailPageSevenActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    companion object {
      const val TAG: String = "SEE_MORE_SEVEN_ACTIVITY"

    }
  }
