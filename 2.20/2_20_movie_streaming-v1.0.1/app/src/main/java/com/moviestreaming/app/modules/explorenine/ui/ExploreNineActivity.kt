package com.moviestreaming.app.modules.explorenine.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityExploreNineBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.explorenine.`data`.model.ExplorenineRowModel
import com.moviestreaming.app.modules.explorenine.`data`.model.Specials8RowModel
import com.moviestreaming.app.modules.explorenine.`data`.viewmodel.ExploreNineVM
import com.moviestreaming.app.modules.seemorefive.ui.SeeMoreFiveActivity
import com.moviestreaming.app.modules.seemoresix.ui.SeeMoreSixActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreNineActivity : BaseActivity<ActivityExploreNineBinding>(R.layout.activity_explore_nine)
    {
  private val viewModel: ExploreNineVM by viewModels<ExploreNineVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val specialsAdapter = SpecialsAdapter(viewModel.specialsList.value?:mutableListOf())
    binding.recyclerSpecials.adapter = specialsAdapter
    specialsAdapter.setOnItemClickListener(
    object : SpecialsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials8RowModel) {
        onClickRecyclerSpecials(view, position, item)
      }
    }
    )
    viewModel.specialsList.observe(this) {
      specialsAdapter.updateData(it)
    }
    val exploreNineAdapter =
    ExploreNineAdapter(viewModel.exploreNineList.value?:mutableListOf())
    binding.recyclerExploreNine.adapter = exploreNineAdapter
    exploreNineAdapter.setOnItemClickListener(
    object : ExploreNineAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ExplorenineRowModel) {
        onClickRecyclerExploreNine(view, position, item)
      }
    }
    )
    viewModel.exploreNineList.observe(this) {
      exploreNineAdapter.updateData(it)
    }
    binding.exploreNineVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSpecials(
    view: View,
    position: Int,
    item: Specials8RowModel
  ): Unit {
    when(view.id) {
      R.id.imageDrama ->  {
        onClickRecyclerSpecialsImageDrama(view, position, item)
      }
    }
  }

  fun onClickRecyclerExploreNine(
    view: View,
    position: Int,
    item: ExplorenineRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerExploreNineLinearMovieCard(view, position, item)
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

    fun onClickRecyclerSpecialsImageDrama(
      view: View,
      position: Int,
      item: Specials8RowModel
    ) {
      /** TODO As per your logic, Add constant type for item click.*/
      when(0) {
        0 ->  {
          val destIntent = SeeMoreSixActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        1 ->  {
          val destIntent = SeeMoreFiveActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }
    }

    fun onClickRecyclerExploreNineLinearMovieCard(
      view: View,
      position: Int,
      item: ExplorenineRowModel
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
      const val TAG: String = "EXPLORE_NINE_ACTIVITY"

    }
  }
