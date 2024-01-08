package com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPopularartistsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.`data`.model.PopularartistsRowModel
import kotlin.Int
import kotlin.collections.List

class PopularArtistsAdapter(
  var list: List<PopularartistsRowModel>
) : RecyclerView.Adapter<PopularArtistsAdapter.RowPopularartistsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPopularartistsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_popularartists,parent,false)
    return RowPopularartistsVH(view)
  }

  override fun onBindViewHolder(holder: RowPopularartistsVH, position: Int) {
    val popularartistsRowModel = PopularartistsRowModel()
    // TODO uncomment following line after integration with data source
    // val popularartistsRowModel = list[position]
    holder.binding.popularartistsRowModel = popularartistsRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PopularartistsRowModel>) {
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
      item: PopularartistsRowModel
    ) {
    }
  }

  inner class RowPopularartistsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPopularartistsBinding = RowPopularartistsBinding.bind(itemView)
  }
}
