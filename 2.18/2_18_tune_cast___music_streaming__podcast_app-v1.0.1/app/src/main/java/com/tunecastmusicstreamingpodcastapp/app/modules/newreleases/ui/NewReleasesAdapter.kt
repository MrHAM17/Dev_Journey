package com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowNewreleasesBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.model.NewreleasesRowModel
import kotlin.Int
import kotlin.collections.List

class NewReleasesAdapter(
  var list: List<NewreleasesRowModel>
) : RecyclerView.Adapter<NewReleasesAdapter.RowNewreleasesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowNewreleasesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_newreleases,parent,false)
    return RowNewreleasesVH(view)
  }

  override fun onBindViewHolder(holder: RowNewreleasesVH, position: Int) {
    val newreleasesRowModel = NewreleasesRowModel()
    // TODO uncomment following line after integration with data source
    // val newreleasesRowModel = list[position]
    holder.binding.newreleasesRowModel = newreleasesRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<NewreleasesRowModel>) {
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
      item: NewreleasesRowModel
    ) {
    }
  }

  inner class RowNewreleasesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowNewreleasesBinding = RowNewreleasesBinding.bind(itemView)
  }
}
