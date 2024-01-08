package com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowPodcastdetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.podcastdetails.`data`.model.PodcastdetailsRowModel
import kotlin.Int
import kotlin.collections.List

class PodcastDetailsAdapter(
  var list: List<PodcastdetailsRowModel>
) : RecyclerView.Adapter<PodcastDetailsAdapter.RowPodcastdetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPodcastdetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_podcastdetails,parent,false)
    return RowPodcastdetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowPodcastdetailsVH, position: Int) {
    val podcastdetailsRowModel = PodcastdetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val podcastdetailsRowModel = list[position]
    holder.binding.podcastdetailsRowModel = podcastdetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PodcastdetailsRowModel>) {
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
      item: PodcastdetailsRowModel
    ) {
    }
  }

  inner class RowPodcastdetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPodcastdetailsBinding = RowPodcastdetailsBinding.bind(itemView)
  }
}
