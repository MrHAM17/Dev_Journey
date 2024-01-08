package com.tunecastmusicstreamingpodcastapp.app.modules.explore.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowExploreBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.explore.`data`.model.ExploreRowModel
import kotlin.Int
import kotlin.collections.List

class ExploreAdapter(
  var list: List<ExploreRowModel>
) : RecyclerView.Adapter<ExploreAdapter.RowExploreVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowExploreVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_explore,parent,false)
    return RowExploreVH(view)
  }

  override fun onBindViewHolder(holder: RowExploreVH, position: Int) {
    val exploreRowModel = ExploreRowModel()
    // TODO uncomment following line after integration with data source
    // val exploreRowModel = list[position]
    holder.binding.exploreRowModel = exploreRowModel
  }

  override fun getItemCount(): Int = 8
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ExploreRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ExploreRowModel
    ) {
    }
  }

  inner class RowExploreVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowExploreBinding = RowExploreBinding.bind(itemView)
    init {
      binding.linearExploreCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ExploreRowModel())
      }
    }
  }
}
